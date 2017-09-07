{requirements: [{class: InlineJavascriptRequirement}], hints: [{class: DockerRequirement,
      dockerPull: 'duplexa/hictool-bam2hdf5:v2'}], inputs: [{type: [File], inputBinding: {
        separate: false, position: 1}, id: '#input_bam1'}, {type: [File], inputBinding: {
        separate: false, position: 2}, id: '#input_bam2'}, {type: ['null', string],
      inputBinding: {position: 4, valueFrom: {script: $job.inputs.output_dir || '.',
          engine: '#cwl-js-engine', class: Expression}, separate: false}, id: '#output_dir'},
    {type: ['null', File], inputBinding: {separate: false, position: 3}, id: '#RE_bed'}],
  baseCommand: [run.sh], outputs: [{type: ['null', File], outputBinding: {glob: $(inputs.output_dir
          + '/fend_object.hdf5')}, id: '#fend_object_hdf5'}, {type: ['null', File],
      outputBinding: {glob: $(inputs.output_dir + '/HiC_data_object.hdf5')}, id: '#HiC_data_object_hdf5'},
    {type: ['null', File], outputBinding: {glob: $(inputs.output_dir + '/HiC_distance_function.hdf5')},
      id: '#HiC_distance_function_hdf5'}, {type: ['null', File], outputBinding: {
        glob: $(inputs.output_dir + '/HiC_norm_binning.hdf5')}, id: '#HiC_norm_binning_hdf5'},
    {type: ['null', File], outputBinding: {glob: $(inputs.output_dir + '/HiC_project_object.hdf5'
          )}, id: '#HiC_project_object_hdf5'}], arguments: [], class: CommandLineTool,
  cwlVersion: draft-3}

