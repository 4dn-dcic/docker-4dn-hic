---
  baseCommand: 
    - "run-pairsam-merge.sh"
  inputs: 
    - 
      default: "out"
      type: 
        - "null"
        - "string"
      inputBinding: 
        separate: true
        position: 1
      id: "#outprefix"
    - 
      type: 
        - "int"
      id: "#nThreads"
      inputBinding: 
        position: 2
        separate: true
      default: 8
    - 
      id: "#input_pairsams"
      inputBinding: 
        itemSeparator: " "
        position: 3
        separate: true
      type: 
        - "null"
        - 
          items: "File"
          type: "array"
  outputs: 
    - 
      outputBinding: 
        glob: "$(inputs.outprefix + '.merged.sam.pairs.gz')"
      type: 
        - "null"
        - "File"
      id: "#merged_pairsam"
  cwlVersion: "v1.0"
  hints: 
    - 
      dockerPull: "duplexa/4dn-hic:v43"
      class: "DockerRequirement"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  arguments: []
  class: "CommandLineTool"

