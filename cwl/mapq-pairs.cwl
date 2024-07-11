---
  baseCommand: 
    - "run-mapq-pairs.sh"
  inputs: 
    - 
      type: 
        - "null"
        - "File"
      inputBinding: 
        separate: true
        position: 1
      id: "#input_pairs"
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
        glob: "$(inputs.outprefix + '.mapq_filt.pairs.gz')"
      type: 
        - "null"
        - "File"
      secondaryFiles: 
        - ".px2"
      id: "#filter_pairs"
  cwlVersion: "v1.0"
  hints: 
    - 
      dockerPull: "public.ecr.aws/dcic-4dn/4dn-hic:v44"
      class: "DockerRequirement"
  requirements: 
    - 
      class: "InlineJavascriptRequirement"
  arguments: []
  class: "CommandLineTool"

