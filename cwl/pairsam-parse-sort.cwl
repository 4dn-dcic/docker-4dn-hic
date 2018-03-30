---
  baseCommand: 
    - "run-pairsam-parse-sort.sh"
  inputs: 
    - 
      type: 
        - "null"
        - "File"
      inputBinding: 
        separate: true
        position: 1
      id: "#bam"
    - 
      type: 
        - "null"
        - "File"
      inputBinding: 
        separate: true
        position: 2
      id: "#chromsize"
    - 
      default: "."
      type: 
        - "null"
        - "string"
      inputBinding: 
        separate: true
        position: 3
      id: "#outdir"
    - 
      default: "out"
      type: 
        - "null"
        - "string"
      inputBinding: 
        separate: true
        position: 4
      id: "#outprefix"
    - 
      type: 
        - "int"
      id: "#Threads"
      inputBinding: 
        position: 5
        separate: true
      default: 8
    - 
      default: "lz4c"
      type: 
        - "null"
        - "string"
      inputBinding: 
        separate: true
        position: 6
      id: "#compress_programm"
  outputs: 
    - 
      outputBinding: 
        glob: "$(inputs.outprefix + '.sam.pairs.gz')"
      type: 
        - "null"
        - "File"
      id: "#sorted_pairsam"
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

