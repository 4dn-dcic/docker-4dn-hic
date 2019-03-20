---
  baseCommand: 
    - "run-cool2multirescool.sh"
  hints: 
    - 
      dockerPull: "duplexa/4dn-hic:v43"
      class: "DockerRequirement"
  cwlVersion: "v1.0"
  inputs: 
    - 
      inputBinding: 
        separate: true
        prefix: "-i"
        position: 1
      type: 
        - "null"
        - "File"
      id: "#input_cool"
    - 
      default: 4
      type: 
        - "null"
        - "int"
      id: "#ncores"
      inputBinding: 
        separate: true
        prefix: "-p"
        position: 2
    - 
      default: 10000000
      type: 
        - "null"
        - "int"
      id: "#chunksize"
      inputBinding: 
        separate: true
        prefix: "-c"
        position: 4
    - 
      default: "out"
      inputBinding: 
        separate: true
        prefix: "-o"
        position: 3
      id: "#outprefix"
      type: 
        - "null"
        - "string"
    - 
      default: false
      type: 
        - "boolean"
      id: "#juicer_res"
      inputBinding: 
        separate: true
        prefix: "-j"
        position: 5
    - 
      default: ""
      type: 
        - "string"
      id: "#custom_res"
      inputBinding: 
        separate: true
        prefix: "-u"
        position: 6
    - 
      default: false
      type: 
        - "boolean"
      id: "#no_balance"
      inputBinding: 
        separate: true
        prefix: "-B"
        position: 7
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  class: "CommandLineTool"
  arguments: []
  outputs: 
    - 
      outputBinding: 
        glob: "*.multires.cool"
      id: "#mcool"
      type: 
        - "null"
        - "File"

