---
  class: "Workflow"
  cwlVersion: "v1.0"
  fdn_meta: 
    category: "filter"
    data_types: 
      - "Hi-C"
    description: "This is the full workflow of the Hi-C data processing pipeline. It takes two arrays of arrays of fastq file (fastq1=[[rep1.tecrep1.R1, rep1.tecrep2.R1], [rep2.tecrep1.R1, rep2.tecrep2.R1]], fastq2=[[rep1.tecrep1.R2, rep1.tecrep2.R2], [rep2.tecrep1.R2, rep2.tecrep2.R2]]) as input and performs alignment, parsing, sorting, filtering, deduping and creates contact matrices in both hic and mcool formats."
    name: "hi-c"
    title: "Hi-C"
    workflow_type: "Hi-C data analysis"
  inputs: 
    - 
      fdn_format: "fastq"
      id: "#fastq1"
      type: 
        - 
          type: "array"
          items:
            type: "array"
            items: "File"
    - 
      fdn_format: "fastq"
      id: "#fastq2"
      type: 
        - 
          type: "array"
          items:
            type: "array"
            items: "File"
    - 
      fdn_format: "bwaIndex"
      id: "#bwa_index"
      type: 
        - "File"
    - 
      fdn_format: "chromsizes"
      id: "#chromsize"
      type: 
        - "File"
    - 
      default: 4
      id: "#nthreads_bwa"
      type: 
        - "int"
    - 
      default: 8
      id: "#nthreads_parse_sort"
      type: 
        - "int"
    - 
      default: 8
      id: "#nthreads_merge"
      type: 
        - "int"
    - 
      fdn_format: "juicer_format_restriction_site_file"
      id: "#restriction_file"
      type: 
        - "null"
        - "File"
    - 
      default: 8
      id: "#nthreads_cooler"
      type: 
        - "int"
    - 
      default: 1000
      id: "#min_res"
      type: 
        - "int"
    - 
      default: "14g"
      id: "#maxmem_juicer"
      type: 
        - "string"
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
    - 
      default: false
      id: "#higlass_res"
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
      id: "#chunksize_cooler"
      type: 
        - "int"
    - 
      default: 0

  outputs: 
    - 
      fdn_format: "bam"
      fdn_output_type: "processed"
      id: "#annotated_bam"
      outputSource: "#hi-c-fastq2pairs/annotated_bam"
      type: 
        - "File"
    - 
      fdn_format: "pairs"
      fdn_output_type: "processed"
      fdn_secondary_file_formats: 
        - "pairs_px2"
      id: "#filtered_pairs"
      outputSource: "#hi-c-fastq2pairs/filtered_pairs"
      type: 
        - "File"
    - 
      fdn_format: "pairs"
      fdn_output_type: "processed"
      fdn_secondary_file_formats: 
        - "pairs_px2"
      id: "#merged_pairs"
      outputSource: "#hi-c-processing-pairs/merged_pairs"
      type: 
        - "File"
    - 
      fdn_format: "hic"
      fdn_output_type: "processed"
      id: "#hic"
      outputSource: "#hi-c-processing-pairs/hic"
      type: 
        - "File"
    - 
      fdn_format: "mcool"
      fdn_output_type: "processed"
      id: "#mcool"
      outputSource: "#hi-c-processing-pairs/mcool"
      type: 
        - "File"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
    - 
      class: "ScatterFeatureRequirement"
  steps: 
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "alignment"
          - "annotation"
          - "sorting"
          - "merging"
          - "filter"
        description: "Annotating, sortig, merging and filtering pairsam files"
        software_used: 
          - "bwa"
          - "pairsamtools_eccd21"
      id: "#hi-c-fastq2pairs"
      in: 
        - 
          arg_name: "fastq1"
          fdn_format: "fastq"
          id: "#hi-c-fastq2pairs/fastq1"
          source: "#fastq1"
        - 
          arg_name: "fastq2"
          fdn_format: "fastq"
          id: "#hi-c-fastq2pairs/fastq2"
          source: "#fastq2"
        - 
          arg_name: "bwa_index"
          fdn_format: "bwaIndex"
          id: "#hi-c-fastq2pairs/bwa_index"
          source: "#bwa_index"
        - 
          arg_name: "nThreads"
          id: "#hi-c-fastq2pairs/nThreads"
          source: "#nthreads_bwa"
        - 
          arg_name: "chromsize"
          fdn_format: "chromsize"
          id: "#hi-c-fastq2pairs/chromsize"
          source: "#chromsize"
        - 
          arg_name: "nthreads_parse_sort"
          id: "#hi-c-fastq2pairs/Threads"
          source: "#nthreads_parse_sort"
        - 
          arg_name: "nthreads_merge"
          id: "#hi-c-fastq2pairs/nthreads_merge"
          source: "#nthreads_merge"
      out: 
        - 
          arg_name: "annotated_bam"
          fdn_format: "bam"
          id: "#hi-c-fastq2pairs/annotated_bam"
        - 
          arg_name: "filtered_pairs"
          fdn_format: "pairs"
          id: "#hi-c-fastq2pairs/filtered_pairs"
      run: "hi-c-fastq2pairs.cwl"
      scatter: 
        - "#hi-c-fastq2pairs/fastq1"
        - "#hi-c-fastq2pairs/fastq2"
      scatterMethod: dotproduct
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "merging"
          - "annotation"
          - "aggregation"
          - "normalization"
        description: "Generatinng matrix files"
        software_used: 
          - "pairix_0.3.3"
          - "cooler_0.7.6"
          - "juicer_tools_1.8.9-cuda8"
          - "hic2cool_0.4.1"
          - "mcool2hic_87a912"
      id: "#hi-c-processing-pairs"
      in: 
        - 
          arg_name: "input_pairs"
          fdn_cardinality: "array"
          fdn_format: "pairs"
          fdn_type: "data file"
          id: "#hi-c-processing-pairs/input_pairs"
          source: "#hi-c-fastq2pairs/filtered_pairs"
        - 
          arg_name: "restriction_file"
          fdn_cardinality: "single"
          fdn_format: "juicer_format_restriction_site_file"
          fdn_type: "reference file"
          id: "#hi-c-processing-pairs/restriction_file"
          source: "#restriction_file"
        - 
          arg_name: "chrsizes"
          fdn_cardinality: "single"
          fdn_format: "chromsizes"
          fdn_type: "reference file"
          id: "#hi-c-processing-pairs/chrsizes"
          source: "#chromsize"
        - 
          arg_name: "binsize"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/binsize"
          source: "#min_res"
        - 
          arg_name: "ncores"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/ncores"
          source: "#nthreads_cooler"
        - 
          arg_name: "max_split"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/max_split"
          source: "#max_split_cooler"
        - 
          arg_name: "min_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/min_res"
          source: "#min_res"
        - 
          arg_name: "higlass"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/higlass"
          source: "#higlass_res"
        - 
          arg_name: "juicer_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/juicer_res"
          source: "#juicer_res"
        - 
          arg_name: "custom_res"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/custom_res"
          source: "#custom_res"
        - 
          arg_name: "maxmem"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/maxmem"
          source: "#maxmem_juicer"
        - 
          arg_name: "mapqfilter"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/mapqfilter"
          source: "#mapqfilter_juicer"
        - 
          arg_name: "chunksize"
          fdn_cardinality: "single"
          fdn_type: "parameter"
          id: "#hi-c-processing-pairs/chunksize"
          source: "#chunksize_cooler"
      out: 
        - 
          arg_name: "merged_pairs"
          fdn_cardinality: "single"
          fdn_format: "pairs"
          fdn_type: "data file"
          id: "#hi-c-processing-pairs/merged_pairs"
        - 
          arg_name: "hic"
          fdn_cardinality: "single"
          fdn_format: "hic"
          fdn_type: "data file"
          id: "#hi-c-processing-pairs/hic"
        - 
          arg_name: "mcool"
          fdn_cardinality: "single"
          fdn_format: "mcool"
          fdn_type: "data file"
          id: "#hi-c-processing-pairs/mcool"
      run: "hi-c-processing-pairs.cwl"
