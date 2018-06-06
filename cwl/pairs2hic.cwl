---
  outputs: 
    - 
      id: "#hic"
      type: 
        - "File"
      outputBinding: 
        glob: "*.hic"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  baseCommand: 
    - "run-juicebox-pre.sh"
  hints: 
    - 
      class: "DockerRequirement"
      dockerPull: "duplexa/4dn-hic:v42.1"
  inputs: 
    - 
      inputBinding: 
        position: 1
        separate: true
        prefix: "-i"
      id: "#input_pairs"
      type: 
        - "File"
    - 
      inputBinding: 
        position: 2
        prefix: "-c"
        separate: true
      id: "#chromsizes"
      type: 
        - "File"
    - 
      default: "out"
      inputBinding: 
        position: 3
        prefix: "-o"
        separate: true
      id: "#output_prefix"
      type: 
        - "string"
    - 
      default: 5000
      inputBinding: 
        position: 4
        prefix: "-r"
        separate: true
      id: "#min_res"
      type: 
        - "int"
    - 
      default: false
      inputBinding: 
        position: 5
        prefix: "-g"
        separate: true
      id: "#higlass"
      type: 
        - "boolean"
    - 
      default: "14g"
      inputBinding: 
        position: 6
        prefix: "-m"
        separate: true
      id: "#maxmem"
      type: 
        - "string"
    - 
      default: 0
      inputBinding: 
        position: 7
        prefix: "-q"
        separate: true
      id: "#mapqfilter"
      type: 
        - "int"
    - 
      default: ""
      inputBinding: 
        position: 8
        prefix: "-u"
        separate: true
      id: "#custom_res"
      type: 
        - "string"
    -   
      default: false
      type: 
        - "boolean"
      id: "#no_balance"
      inputBinding: 
        separate: true
        prefix: "-B"
        position: 9
  class: "CommandLineTool"
  arguments: []
  cwlVersion: "draft-3"

