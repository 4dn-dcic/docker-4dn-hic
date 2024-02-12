---
  baseCommand: 
    - "run-pairsam-filter2.sh"
  inputs: 
    - 
      type: 
        - "null"
        - "File"
      inputBinding: 
        separate: true
        position: 1
      id: "#input_pairsam"
    - 
      default: "out"
      type: 
        - "null"
        - "string"
      inputBinding: 
        separate: true
        position: 2
      id: "#outprefix"
    - 
      type: 
        - "null"
        - "File"
      inputBinding: 
        separate: true
        position: 3
      id: "#chromsize"
  outputs: 
    - 
      outputBinding: 
        glob: "$(inputs.outprefix + '.lossless.bam')"
      type: 
        - "null"
        - "File"
      id: "#lossless_bamfile"
    - 
      outputBinding: 
        glob: "$(inputs.outprefix + '.dedup.pairs.gz')"
      type: 
        - "null"
        - "File"
      secondaryFiles: 
        - ".px2"
      id: "#filtered_pairs"
  cwlVersion: "v1.0"
  hints: 
    - 
      dockerPull: "4dndcic/4dn-hic:v44"
      class: "DockerRequirement"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  arguments: []
  class: "CommandLineTool"

