{arguments: [], outputs: [{id: '#report', type: ['null', File], outputBinding: {glob: report}}],
  cwlVersion: draft-3, inputs: [{id: '#input_file', type: ['null', File], inputBinding: {
        separate: true, position: 1}}], hints: [{dockerPull: 'duplexa/md5:v1', class: DockerRequirement}],
  baseCommand: [run.sh], requirements: [{class: InlineJavascriptRequirement}], class: CommandLineTool}

