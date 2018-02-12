---
  class: "CommandLineTool"
  cwlVersion: "draft-3"
  inputs: 
    - 
      inputBinding: 
        position: 3
        separate: true
      type: 
        - "null"
        - "File"
      id: "#input_merged_nodups"
    - 
      inputBinding: 
        position: 4
        separate: true
      type: 
        - "null"
        - "File"
      id: "#chromsize"
    - 
      inputBinding: 
        separate: true
        position: 1
        prefix: "-s"
      type: 
        - "null"
        - "int"
      default: 100
      id: "#nsplit"
    - 
      inputBinding: 
        position: 5
        separate: true
      type: 
        - "null"
        - "string"
      default: "out"
      id: "#outprefix"
    - 
      inputBinding: 
        separate: true
        position: 2
        prefix: "-m"
      type: 
        - "null"
        - "int"
      id: "#max_remove_mapq"
  baseCommand: 
    - "merged_nodup2pairs.pl"
  outputs: 
    - 
      outputBinding: 
        glob: "*.bsorted.pairs.gz"
      id: "#out_pairs"
      type: 
        - "null"
        - "File"
    - 
      outputBinding: 
        glob: "*.bsorted.pairs.gz.px2"
      id: "#out_pairs_px"
      type: 
        - "null"
        - "File"
  arguments: []
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  hints: 
    - 
      class: "DockerRequirement"
      dockerPull: "duplexa/4dn-hic:v35"

