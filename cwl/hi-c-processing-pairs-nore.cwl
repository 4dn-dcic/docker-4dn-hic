---
  class: "Workflow"
  cwlVersion: "v1.0"
  fdn_meta: 
    category: "merging + aggregation + normalization"
    data_types: 
      - "DNase Hi-C"
      - "micro-C"
    description: "This is a subworkflow of the Hi-C data analysis pipeline for data generated without restriction enzyme. It takes pairs files for all replicates of a sample, merges them and then produces multi-resolution Hi-c matrices for visualization. The pipeline produces 4 output files. 1) Replicated merged pairs file 2) Contact matrices in .hic format 3) Multiresolution mcool file and 4) normalization vector of mcool files for visualization in juicebox."
    name: "hi-c-processing-pairs-nore"
    title: "Generation of multiresolution Hi-C contact matrices from a set of contact lists, no restriction enzyme"
    workflow_type: "Hi-C data analysis"
  inputs: 
    - 
      fdn_format: "pairs"
      id: "#input_pairs"
      type: 
        - "null"
        - 
          items: "File"
          type: "array"
    - 
      fdn_format: "chromsize"
      id: "#chromsizes"
      type: 
        - "File"
    - 
      default: 8
      id: "#nthreads"
      type: 
        - "int"
    - 
      default: 1000
      id: "#min_res"
      type: 
        - "int"
    - 
      default: "14g"
      id: "#maxmem"
      type: 
        - "string"
    - 
      default: false
      id: "#higlass"
      type: 
        - "boolean"
    - 
      default: false
      id: "#juicer_res"
      type: 
        - "boolean"
    - 
      default: "1000,2000,5000,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000"
      id: "#custom_res"
      type: 
        - "string"
    - 
      default: 13
      id: "#nres"
      type: 
        - "int"
    - 
      default: 10000000
      id: "#chunksize"
      type: 
        - "int"
    - 
      default: 0
      id: "#mapqfilter_juicer"
      type: 
        - "int"
    - 
      default: 2
      id: "#max_split_cooler"
      type: 
        - "int"
  outputs: 
    - 
      fdn_format: "pairs"
      fdn_output_type: "processed"
      fdn_secondary_file_formats: 
        - "pairs_px2"
      id: "#merged_pairs"
      outputSource: "#merge-pairs/merged_pairs"
      type: 
        - "File"
    - 
      fdn_format: "hic"
      fdn_output_type: "processed"
      id: "#hic"
      outputSource: "#pairs2hic/hic"
      type: 
        - "File"
    - 
      fdn_format: "mcool"
      fdn_output_type: "processed"
      id: "#mcool"
      outputSource: "#add-hic-normvector-to-mcool/mcool_with_hicnorm"
      type: 
        - "File"
    - 
      fdn_format: "normvector_juicerformat"
      fdn_output_type: "processed"
      id: "#cooler_normvector"
      outputSource: "#extract-mcool-normvector-for-juicebox/cooler_normvector"
      type: 
        - "File"
  requirements: 
    - 
      class: "ScatterFeatureRequirement"
    - 
      class: "InlineJavascriptRequirement"
  steps: 
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "merging"
        description: "Merging pair files"
        software_used: 
          - "pairix_0.3.3"
      id: "#merge-pairs"
      in: 
        - 
          arg_name: "input_pairs"
          fdn_cardinality: "array"
          fdn_format: "pairs"
          fdn_type: "data file"
          id: "#merge-pairs/input_pairs"
          source: "#input_pairs"
      out: 
        - 
          arg_name: "merged_pairs"
          fdn_cardinality: "single"
          fdn_format: "pairs"
          fdn_type: "data file"
          id: "#merge-pairs/merged_pairs"
      run: "merge-pairs.cwl"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "aggregation"
        description: "Merged Pairs file is processed using Cooler"
        software_used: 
          - "cooler_0.7.6"
      id: "#cooler"
      in: 
        - 
          arg_name: "pairs"
          fdn_cardinality: "single"
          fdn_format: "pairs"
          fdn_type: "data file"
          id: "#cooler/pairs"
          source: "#merge-pairs/merged_pairs"
        - 
          arg_name: "chrsizes"
          fdn_cardinality: "single"
          fdn_format: "chromsizes"
          fdn_type: "reference file"
          id: "#cooler/chrsizes"
          source: "#chromsizes"
        - 
          arg_name: "binsize"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#cooler/binsize"
          source: "#min_res"
        - 
          arg_name: "ncores"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#cooler/ncores"
          source: "#nthreads"
        - 
          arg_name: "max_split"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#cooler/max_split"
          source: "#max_split_cooler"
      out: 
        - 
          arg_name: "cool"
          fdn_cardinality: "single"
          fdn_format: "cool"
          fdn_type: "data file"
          id: "#cooler/cool"
      run: "cooler.cwl"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "aggregation"
          - "normalization"
        description: "Merged Pairs file is processed using Juicebox"
        software_used: 
          - "juicer_tools_1.8.9-cuda8"
      id: "#pairs2hic"
      in: 
        - 
          arg_name: "input_pairs"
          fdn_cardinality: "single"
          fdn_format: "pairs"
          fdn_type: "data file"
          id: "#pairs2hic/input_pairs"
          source: "#merge-pairs/merged_pairs"
        - 
          arg_name: "chromsizes"
          fdn_cardinality: "single"
          fdn_format: "chromsizes"
          fdn_type: "reference file"
          id: "#pairs2hic/chromsizes"
          source: "#chromsizes"
        - 
          arg_name: "min_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#pairs2hic/min_res"
          source: "#min_res"
        - 
          arg_name: "higlass"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#pairs2hic/higlass"
          source: "#higlass"
        - 
          arg_name: "custom_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#pairs2hic/custom_res"
          source: "#custom_res"
        - 
          arg_name: "maxmem"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#pairs2hic/maxmem"
          source: "#maxmem"
        - 
          arg_name: "mapqfilter"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#pairs2hic/mapqfilter"
          source: "#mapqfilter_juicer"
      out: 
        - 
          arg_name: "hic"
          id: "#pairs2hic/hic"
      run: "pairs2hic.cwl"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "aggregation"
          - "normalization"
          - "file format conversion"
        description: "Cooler file is converted to mcool"
        software_used: 
          - "cooler_0.7.6"
      id: "#cool2mcool"
      in: 
        - 
          arg_name: "input_cool"
          fdn_cardinality: "single"
          fdn_format: "cool"
          fdn_type: "data file"
          id: "#cool2mcool/input_cool"
          source: "#cooler/cool"
        - 
          arg_name: "ncores"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#cool2mcool/ncores"
          source: "#nthreads"
        - 
          arg_name: "chunksize"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#cool2mcool/chunksize"
          source: "#chunksize"
        - 
          arg_name: "juicer_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#cool2mcool/juicer_res"
          source: "#juicer_res"
        - 
          arg_name: "custom_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#cool2mcool/custom_res"
          source: "#custom_res"
      out: 
        - 
          arg_name: "mcool"
          fdn_cardinality: "single"
          fdn_format: "mcool"
          fdn_type: "data file"
          id: "#cool2mcool/mcool"
      run: "cool2mcool.cwl"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "file format conversion"
        description: "HiC normalization vector is added to mcooler"
        software_used: 
          - "hic2cool_0.4.1"
      id: "#add-hic-normvector-to-mcool"
      in: 
        - 
          arg_name: "input_mcool"
          fdn_cardinality: "single"
          fdn_format: "mcool"
          fdn_type: "data file"
          id: "#add-hic-normvector-to-mcool/input_mcool"
          source: "#cool2mcool/mcool"
        - 
          arg_name: "input_hic"
          fdn_cardinality: "single"
          fdn_format: "hic"
          fdn_type: "data file"
          id: "#add-hic-normvector-to-mcool/input_hic"
          source: "#pairs2hic/hic"
      out: 
        - 
          arg_name: "mcool_with_hicnorm"
          fdn_cardinality: "single"
          fdn_format: "mcool"
          fdn_type: "data file"
          id: "#add-hic-normvector-to-mcool/mcool_with_hicnorm"
      run: "add-hic-normvector-to-mcool.cwl"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "file format conversion"
        description: "Extracting HiC normalization vector"
        software_used: 
          - "mcool2hic_87a912"
      id: "#extract-mcool-normvector-for-juicebox"
      in: 
        - 
          arg_name: "custom_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#extract-mcool-normvector-for-juicebox/custom_res"
          source: "#custom_res"
        - 
          arg_name: "chromsize"
          fdn_cardinality: "single"
          fdn_format: "chromsizes"
          fdn_type: "reference file"
          id: "#extract-mcool-normvector-for-juicebox/chromsize"
          source: "#chromsizes"
        - 
          arg_name: "mcool"
          fdn_cardinality: "single"
          fdn_format: "mcool"
          fdn_type: "data file"
          id: "#extract-mcool-normvector-for-juicebox/mcool"
          source: "#add-hic-normvector-to-mcool/mcool_with_hicnorm"
      out: 
        - 
          arg_name: "cooler_normvector"
          fdn_cardinality: "single"
          fdn_format: "normvector_juicerformat"
          fdn_type: "data file"
          id: "#extract-mcool-normvector-for-juicebox/cooler_normvector"
      run: "extract-mcool-normvector-for-juicebox.cwl"

