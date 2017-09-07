{class: CommandLineTool, outputs: [{id: '#out_pairs', outputBinding: {glob: '*.bsorted.pairs.gz'},
      type: ['null', File]}, {id: '#out_pairs_index', outputBinding: {glob: '*.bsorted.pairs.gz.px2'},
      type: ['null', File]}], arguments: [], hints: [{class: DockerRequirement, dockerPull: 'duplexa/bam2pairs:v1'}],
  cwlVersion: draft-3, baseCommand: [run.sh], inputs: [{type: [File], inputBinding: {
        separate: true, position: 1}, id: '#input_bam'}, {default: out, type: ['null',
        string], inputBinding: {separate: true, position: 2}, id: '#out_prefix'}],
  requirements: [{class: InlineJavascriptRequirement}]}

