---
  inputs: 
    - 
      inputBinding: 
        separate: true
        prefix: '-i'
        position: 1
      id: "#input_pairs"
      type: 
        - "File"
    - 
      inputBinding: 
        separate: true
        prefix: '-r'
        position: 2
      id: "#restriction_file"
      type: 
        - "null"
        - "File"
    - 
      inputBinding: 
        separate: true
        position: 3
      id: "#outprefix"
      type: 
        - "string"
      default: "out"
  hints: 
    - 
      class: "DockerRequirement"
      dockerPull: "duplexa/4dn-hic:v43"
  cwlVersion: "v1.0"
  outputs: 
    - 
      outputBinding: 
        glob: "$(inputs.outprefix + '.ff.pairs.gz')"
      type: 
        - "null"
        - "File"
      secondaryFiles: 
        - ".px2"
      id: "#pairs_with_frags"
  class: "CommandLineTool"
  arguments: []
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  baseCommand: 
    - "run-addfrag2pairs.sh"

