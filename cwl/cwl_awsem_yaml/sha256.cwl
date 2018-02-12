---
  inputs: 
    - 
      type: 
        - "null"
        - "File"
      inputBinding: 
        position: 1
        separate: true
      id: "#input_file"
  outputs: 
    - 
      outputBinding: 
        loadContents: true
        glob: "\"report\""
      type: 
        - "null"
        - "File"
      id: "#report"
  arguments: []
  baseCommand: 
    - "run.sh"
  cwlVersion: "draft-3"
  hints: 
    - 
      dockerPull: "duplexa/sha256:v1"
      class: "DockerRequirement"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  class: "CommandLineTool"

