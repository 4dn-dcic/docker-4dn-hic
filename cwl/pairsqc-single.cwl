---
  arguments: []
  cwlVersion: "draft-3"
  inputs: 
    - 
      type: 
        - "File"
      inputBinding: 
        separate: true
        position: 1
      secondaryFiles: 
        - ".px2"
      id: "#input_pairs"
      fdn_secondary_file_formats: 
        - "pairs_px2"
    - 
      type: 
        - "File"
      inputBinding: 
        separate: true
        position: 2
      id: "#chromsizes"
    - 
      type: 
        - "string"
      inputBinding: 
        separate: true
        position: 3
      id: "#sample_name"
    - 
      type: 
        - 
          name: "enzyme"
          type: "enum"
          symbols: 
            - "4"
            - "6"
      inputBinding: 
        separate: true
        position: 4
      id: "#enzyme"
    - 
      type: 
        - "string"
      inputBinding: 
        separate: true
        position: 5
      default: "."
      id: "#output_dir"
    - 
      type: 
        - "float"
      inputBinding: 
        separate: true
        position: 6
      default: 8.4
      id: "#max_distance"
  hints: 
    - 
      class: "DockerRequirement"
      dockerPull: "duplexa/4dn-hic:v42.2"
  class: "CommandLineTool"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  baseCommand: 
    - "run-pairsqc-single.sh"
  outputs: 
    - 
      outputBinding: 
        glob: "$(inputs.output_dir + '/*report.zip')"
      type: 
        - "null"
        - "File"
      id: "#report"

