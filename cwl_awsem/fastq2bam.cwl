{cwlVersion: v1.0, arguments: [], class: CommandLineTool, baseCommand: [preprocessing.sh],
  hints: [{class: DockerRequirement, dockerPull: 'duplexa/hictool-fastq2bam:v3'}],
  inputs: [{id: '#input_fastq1', type: [File], inputBinding: {separate: false, position: 2}},
    {id: '#input_fastq2', type: [File], inputBinding: {separate: false, position: 3}},
    {default: ., id: '#output_dir', type: ['null', string], inputBinding: {position: 4,
        valueFrom: {script: $job.inputs.output_dir || '.', class: Expression, engine: '#cwl-js-engine'},
        separate: false}}, {id: '#bowtie_index', type: ['null', File], inputBinding: {
        separate: false, position: 1}}], requirements: [{class: InlineJavascriptRequirement}],
  outputs: [{id: '#sorted_bam_pe', outputBinding: {glob: $(inputs.output_dir + '/out_noDup.sort.bam')},
      type: ['null', File]}, {id: '#split_bam1', outputBinding: {glob: $(inputs.output_dir
          + '/out_pair1.bam')}, type: ['null', File]}, {id: '#split_bam2', outputBinding: {
        glob: $(inputs.output_dir + '/out_pair2.bam')}, type: ['null', File]}]}

