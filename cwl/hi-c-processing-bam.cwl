---
  class: "Workflow"
  cwlVersion: "v1.0"
  fdn_meta: 
    category: "filter"
    data_types: 
      - "Hi-C"
    description: "This is a subworkflow of the Hi-C data processing pipeline. It takes a bam file as input and performs parsing, sorting, filtering and deduping. It produces two output files, a lossless, filter-annotated bam file and a filtered pairs (contact list) file."
    name: "hi-c-processing-bam"
    title: "Hi-C Post-alignment Processing"
    workflow_type: "Hi-C data analysis"
  inputs: 
    - 
      fdn_format: "bam"
      id: "#input_bams"
      type: 
        - 
          items: "File"
          type: "array"
    - 
      fdn_format: "chromsizes"
      id: "#chromsize"
      type: 
        - "File"
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
      outputSource: "#pairsam-filter/lossless_bamfile"
      type: 
        - "File"
    - 
      fdn_format: "pairs"
      fdn_output_type: "processed"
      fdn_secondary_file_formats: 
        - "pairs_px2"
      id: "#filtered_pairs"
      outputSource: "#pairsam-filter/filtered_pairs"
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
          - "annotation"
          - "sorting"
        description: "Parsing and sorting bam file"
        software_used: 
          - "pairtools_0.2.2"
      id: "#pairsam-parse-sort"
      in: 
        - 
          arg_name: "bam"
          fdn_format: "bam"
          id: "#pairsam-parse-sort/bam"
          source: "#input_bams"
        - 
          arg_name: "chromsize"
          fdn_format: "chromsize"
          id: "#pairsam-parse-sort/chromsize"
          source: "#chromsize"
        - 
          arg_name: "Threads"
          id: "#pairsam-parse-sort/Threads"
          source: "#nthreads_parse_sort"
      out: 
        - 
          arg_name: "sorted_pairsam"
          fdn_format: "pairsam"
          id: "#pairsam-parse-sort/sorted_pairsam"
      run: "pairsam-parse-sort.cwl"
      scatter: "#pairsam-parse-sort/bam"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "merging"
        description: "Merging pairsam files"
        software_used: 
          - "pairtools_0.2.2"
      id: "#pairsam-merge"
      in: 
        - 
          arg_name: "input_pairsams"
          fdn_format: "pairsam"
          id: "#pairsam-merge/input_pairsams"
          source: "#pairsam-parse-sort/sorted_pairsam"
        - 
          arg_name: "nThreads"
          id: "#pairsam-merge/nThreads"
          source: "#nthreads_merge"
      out: 
        - 
          arg_name: "merged_pairsam"
          fdn_format: "pairsam"
          id: "#pairsam-merge/merged_pairsam"
      run: "pairsam-merge.cwl"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "filter"
        description: "Marking duplicates to pairsam file"
        software_used: 
          - "pairtools_0.2.2"
      id: "#pairsam-markasdup"
      in: 
        - 
          arg_name: "input_pairsam"
          fdn_format: "pairsam"
          id: "#pairsam-markasdup/input_pairsam"
          source: "#pairsam-merge/merged_pairsam"
      out: 
        - 
          arg_name: "dupmarked_pairsam"
          fdn_format: "pairsam"
          id: "#pairsam-markasdup/dupmarked_pairsam"
      run: "pairsam-markasdup.cwl"
    - 
      fdn_step_meta: 
        analysis_step_types: 
          - "filter"
          - "file format conversion"
        description: "Filtering duplicate and invalid reads"
        software_used: 
          - "pairtools_0.2.2"
      id: "#pairsam-filter"
      in: 
        - 
          arg_name: "input_pairsam"
          fdn_format: "pairsam"
          id: "#pairsam-filter/input_pairsam"
          source: "#pairsam-markasdup/dupmarked_pairsam"
        - 
          arg_name: "chromsize"
          fdn_format: "chromsize"
          id: "#pairsam-filter/chromsize"
          source: "#chromsize"
      out: 
        - 
          arg_name: "lossless_bamfile"
          fdn_format: "bam"
          id: "#pairsam-filter/lossless_bamfile"
        - 
          arg_name: "filtered_pairs"
          fdn_format: "pairs"
          id: "#pairsam-filter/filtered_pairs"
      run: "pairsam-filter.cwl"

