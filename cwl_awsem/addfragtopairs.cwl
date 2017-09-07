{inputs: [{inputBinding: {separate: true, position: 1}, id: '#input_pairs', type: [
        'null', File]}, {inputBinding: {separate: true, position: 2}, id: '#restriction_file',
      type: ['null', File]}, {inputBinding: {separate: true, position: 3}, id: '#out_prefix',
      type: ['null', string], default: out}], hints: [{class: DockerRequirement, dockerPull: 'duplexa/4dn-hic:v22'}],
  cwlVersion: draft-3, outputs: [{outputBinding: {glob: $(inputs.outprefix + '.ff.pairs.gz')},
      type: ['null', File], id: '#out_pairs'}, {outputBinding: {glob: $(inputs.outprefix
          + '.ff.pairs.gz.px2')}, type: ['null', File], id: '#out_pairs_px2'}], class: CommandLineTool,
  arguments: [], requirements: [{class: InlineJavascriptRequirement}], baseCommand: [
    run-addfrag2pairs.sh]}

