---
  class: "Workflow"
  cwlVersion: "v1.0"
  fdn_meta: 
    category: "filter"
    data_types: 
      - "Hi-C"
    description: "This is a subworkflow of the Hi-C data processing pipeline. It takes two arrays of fastq file (R1 array, R2 array) as input and performs alignment, parsing, sorting, filtering and deduping. It produces two output files, a lossless, filter-annotated bam file and a filtered pairs (contact list) file."
    name: "hi-c-fastq2pairs"
    title: "Hi-C Fastq to Pairs"
    workflow_type: "Hi-C data analysis"
  inputs: 
    - 
      fdn_format: "fastq"
      id: "#fastq1"
      type: 
        - 
          items: "File"
          type: "array"
    - 
      fdn_format: "fastq"
      id: "#fastq2"
      type: 
        - 
          items: "File"
          type: "array"
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
  outputs: 
    - 
      fdn_format: "bam"
      fdn_output_type: "processed"
      id: "#annotated_bam"
      outputSource: "#hi-c-processing-bam/annotated_bam"
      type: 
        - "File"
    - 
      fdn_format: "pairs"
      fdn_output_type: "processed"
      fdn_secondary_file_formats: 
        - "pairs_px2"
      id: "#filtered_pairs"
      outputSource: "#hi-c-processing-bam/filtered_pairs"
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
        description: "Alignment"
        software_used: 
          - "bwa"
      id: "#bwa-mem"
      in: 
        - 
          arg_name: "fastq1"
          fdn_format: "fastq"
          id: "#bwa-mem/fastq1"
          source: "#fastq1"
        - 
          arg_name: "fastq2"
          fdn_format: "fastq"
          id: "#bwa-mem/fastq2"
          source: "#fastq2"
        - 
          arg_name: "bwa_index"
          fdn_format: "bwaIndex"
          id: "#bwa-mem/bwa_index"
          source: "#bwa_index"
        - 
          arg_name: "nThreads"
          id: "#bwa-mem/nThreads"
          source: "#nthreads_bwa"
      out: 
        - 
          arg_name: "out_bam"
          fdn_format: "bam"
          id: "#bwa-mem/out_bam"
      run: "bwa-mem.cwl"
      scatter: 
        - "#bwa-mem/fastq1"
        - "#bwa-mem/fastq2"
      scatterMethod: dotproduct
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "annotation"
          - "sorting"
          - "merging"
          - "filter"
        description: "Annotating, sortig, merging and filtering pairsam files"
        software_used: 
          - "pairsamtools_eccd21"
      id: "#hi-c-processing-bam"
      in: 
        - 
          arg_name: "bam"
          fdn_format: "bam"
          id: "#hi-c-processing-bam/bam"
          source: "#bwa-mem/out_bam"
        - 
          arg_name: "chromsize"
          fdn_format: "chromsize"
          id: "#hi-c-processing-bam/chromsize"
          source: "#chromsize"
        - 
          arg_name: "nthreads_parse_sort"
          id: "#hi-c-processing-bam/Threads"
          source: "#nthreads_parse_sort"
          arg_name: "input_pairsams"
        - 
          arg_name: "nthreads_merge"
          id: "#hi-c-processing-bam/nthreads_merge"
          source: "#nthreads_merge"
      out: 
        - 
          arg_name: "annotated_bam"
          fdn_format: "bam"
          id: "#hi-c-processing-bam/annotated_bam"
        - 
          arg_name: "filtered_pairs"
          fdn_format: "pairs"
          id: "#hi-c-processing-bam/filtered_pairs"
      run: "hi-c-processing-bam.cwl"
