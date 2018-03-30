---
  fdn_meta: 
    title: "Generation of multiresolution Hi-C contact matrices from a set of contact lists, no normalization"
    name: "hi-c-processing-pairs"
    data_types: 
      - "Capture Hi-C"
    category: "merging + aggregation + normalization"
    workflow_type: "Hi-C data analysis"
    description: "This is a subworkflow of the Hi-C data analysis pipeline without matrix normalization. It takes pairs files for all replicates of a sample, merges them and then produces multi-resolution Hi-c matrices for visualization. The pipeline produces 4 output files. 1) Replicated merged pairs file 2) Contact matrices in .hic format 3) Multiresolution mcool file and 4) normalization vector of mcool files for visualization in juicebox."
  requirements: 
    - 
      class: "ScatterFeatureRequirement"
    - 
      class: "InlineJavascriptRequirement"
  outputs: 
    - 
      id: "#merged_pairs"
      type: 
        - "File"
      source: "#merge-pairs.merged_pairs"
      fdn_format: "pairs"
      fdn_output_type: "processed"
      fdn_secondary_file_formats: 
        - "pairs_px2"
    - 
      id: "#hic"
      type: 
        - "File"
      source: "#pairs2hic.hic"
      fdn_format: "hic"
      fdn_output_type: "processed"
    - 
      id: "#mcool"
      type: 
        - "File"
      source: "#cool2mcool.mcool"
      fdn_format: "mcool"
      fdn_output_type: "processed"
  inputs: 
    - 
      id: "#input_pairs"
      type: 
        - "null"
        - 
          type: "array"
          items: "File"
      fdn_format: "pairs"
    - 
      id: "#chromsizes"
      type: 
        - "File"
      fdn_format: "chromsize"
    - 
      id: "#restriction_file"
      type: 
        - "null"
        - "File"
      fdn_format: "juicer_format_restriction_site_file"
    - 
      id: "#nthreads"
      default: 8
      type: 
        - "int"
    - 
      id: "#min_res"
      type: 
        - "int"
      default: 1000
    - 
      id: "#maxmem"
      type: 
        - "string"
      default: "14g"
    - 
      id: "#higlass"
      type: 
        - "boolean"
      default: false
    - 
      id: "#juicer_res"
      type: 
        - "boolean"
      default: false
    - 
      id: "#custom_res"
      type: 
        - "string"
      default: "1000,2000,5000,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000"
    - 
      id: "#nres"
      default: 13
      type: 
        - "int"
    - 
      id: "#chunksize"
      default: 10000000
      type: 
        - "int"
    - 
      id: "#mapqfilter_juicer"
      default: 0
      type: 
        - "int"
    - 
      id: "#max_split_cooler"
      default: 2
      type: 
        - "int"
    -
      id: "#no_balance"
      default: true
      type:
        - "boolean"
  class: "Workflow"
  cwlVersion: "draft-3"
  steps: 
    - 
      fdn_step_meta: 
        software_used: 
          - "pairix_0.3.3"
        description: "Merging pair files"
        analysis_step_types: 
          - "merging"
      outputs: 
        - 
          id: "#merge-pairs.merged_pairs"
          fdn_format: "pairs"
          fdn_type: "data file"
          fdn_cardinality: "single"
      inputs: 
        - 
          source: "#input_pairs"
          id: "#merge-pairs.input_pairs"
          fdn_format: "pairs"
          fdn_type: "data file"
          fdn_cardinality: "array"
      run: "merge-pairs.cwl"
      id: "#merge-pairs"
    - 
      fdn_step_meta: 
        software_used: 
          - "pairix_0.3.3"
        description: "Adding restriction enzyme site information to the pairs file"
        analysis_step_types: 
          - "annotation"
      outputs: 
        - 
          id: "#addfragtopairs.pairs_with_frags"
          fdn_format: "pairs"
          fdn_type: "data file"
          fdn_cardinality: "single"
      inputs: 
        - 
          id: "#addfragtopairs.input_pairs"
          source: "#merge-pairs.merged_pairs"
          fdn_format: "pairs"
          fdn_type: "data file"
          fdn_cardinality: "single"
        - 
          id: "#addfragtopairs.restriction_file"
          source: "#restriction_file"
          fdn_format: "juicer_format_restriction_site_file"
          fdn_type: "reference file"
          fdn_cardinality: "single"
      run: "addfragtopairs.cwl"
      id: "#addfragtopairs"
    - 
      fdn_step_meta: 
        software_used: 
          - "cooler_0.7.6"
        description: "Merged Pairs file is processed using Cooler"
        analysis_step_types: 
          - "aggregation"
      outputs: 
        - 
          id: "#cooler.cool"
          fdn_format: "cool"
          fdn_type: "data file"
          fdn_cardinality: "single"
      inputs: 
        - 
          id: "#cooler.pairs"
          source: "#merge-pairs.merged_pairs"
          fdn_format: "pairs"
          fdn_type: "data file"
          fdn_cardinality: "single"
        - 
          id: "#cooler.chrsizes"
          source: "#chromsizes"
          fdn_format: "chromsizes"
          fdn_type: "reference file"
          fdn_cardinality: "single"
        - 
          id: "#cooler.binsize"
          source: "#min_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          id: "#cooler.ncores"
          source: "#nthreads"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          id: "#cooler.max_split"
          source: "#max_split_cooler"
          fdn_cardinality: "single"
          fdn_type: "parameter"
      run: "cooler.cwl"
      id: "#cooler"
    - 
      fdn_step_meta: 
        software_used: 
          - "juicer_tools_1.8.9-cuda8"
        description: "Merged Pairs file is processed using Juicebox"
        analysis_step_types: 
          - "aggregation"
      outputs: 
        - 
          id: "#pairs2hic.hic"
      inputs: 
        - 
          source: "#addfragtopairs.pairs_with_frags"
          id: "#pairs2hic.input_pairs"
          fdn_format: "pairs"
          fdn_type: "data file"
          fdn_cardinality: "single"
        - 
          source: "#chromsizes"
          id: "#pairs2hic.chromsizes"
          fdn_format: "chromsizes"
          fdn_type: "reference file"
          fdn_cardinality: "single"
        - 
          source: "#min_res"
          id: "#pairs2hic.min_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          source: "#higlass"
          id: "#pairs2hic.higlass"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          source: "#custom_res"
          id: "#pairs2hic.custom_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          source: "#maxmem"
          id: "#pairs2hic.maxmem"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          source: "#mapqfilter_juicer"
          id: "#pairs2hic.mapqfilter"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          id: "#pairs2hic.no_balance"
          source: "#no_balance"
          fdn_cardinality: "single"
          fdn_type: "parameter"
      run: "pairs2hic.cwl"
      id: "#pairs2hic"
    - 
      fdn_step_meta: 
        software_used: 
          - "cooler_0.7.6"
        description: "Cooler file is converted to mcool"
        analysis_step_types: 
          - "aggregation"
          - "file format conversion"
      outputs: 
        - 
          id: "#cool2mcool.mcool"
          fdn_format: "mcool"
          fdn_type: "data file"
          fdn_cardinality: "single"
      inputs: 
        - 
          id: "#cool2mcool.input_cool"
          source: "#cooler.cool"
          fdn_format: "cool"
          fdn_type: "data file"
          fdn_cardinality: "single"
        - 
          id: "#cool2mcool.ncores"
          source: "#nthreads"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          id: "#cool2mcool.chunksize"
          source: "#chunksize"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          id: "#cool2mcool.juicer_res"
          source: "#juicer_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          id: "#cool2mcool.custom_res"
          source: "#custom_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
        - 
          id: "#cool2mcool.no_balance"
          source: "#no_balance"
          fdn_cardinality: "single"
          fdn_type: "parameter"
      run: "cool2mcool.cwl"
      id: "#cool2mcool"
