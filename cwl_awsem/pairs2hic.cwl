{outputs: [{id: '#output_hic', type: ['null', File], outputBinding: {glob: '*.hic'}}],
  requirements: [{class: InlineJavascriptRequirement}], baseCommand: [run-juicebox-pre.sh],
  hints: [{class: DockerRequirement, dockerPull: 'duplexa/4dn-hic:v35'}], inputs: [
    {inputBinding: {position: 1, separate: true}, id: '#input_pairs', type: ['null',
        File]}, {inputBinding: {position: 2, separate: true}, id: '#chromsizes_file',
      type: ['null', File]}, {default: out, inputBinding: {position: 3, separate: true},
      id: '#output_prefix', type: ['null', string]}, {default: 5000, inputBinding: {
        position: 4, separate: true}, id: '#min_res', type: ['null', int]}, {default: '1',
      inputBinding: {position: 5, separate: true}, id: '#higlass', type: ['null',
        string]}, {default: 14g, inputBinding: {position: 6, separate: true}, id: '#maxmem',
      type: ['null', string]}], class: CommandLineTool, arguments: [], cwlVersion: draft-3}

