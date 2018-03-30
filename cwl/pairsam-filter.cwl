---
  baseCommand: 
    - "run-pairsam-filter.sh"
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
  cwlVersion: "draft-3"
  hints: 
    - 
      dockerPull: "duplexa/4dn-hic:v42.1"
      class: "DockerRequirement"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  arguments: []
  class: "CommandLineTool"

