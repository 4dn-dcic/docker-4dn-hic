---
  baseCommand: 
    - "run-pairsam-markasdup.sh"
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
  outputs: 
    - 
      outputBinding: 
        glob: "$(inputs.outprefix + '.marked.sam.pairs.gz')"
      type: 
        - "null"
        - "File"
      secondaryFiles: 
        - ".px2"
      id: "#dupmarked_pairsam"
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

