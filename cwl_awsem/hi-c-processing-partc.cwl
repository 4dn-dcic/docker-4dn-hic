{cwlVersion: v1.0, inputs: [{id: '#input_cool', type: ['null', File]}, {id: '#input_hic',
      type: ['null', File]}, {id: '#nres', default: 13, type: ['null', int]}, {id: '#ncores',
      default: 4, type: ['null', int]}], outputs: [{id: '#output_mcool', source: '#add_hic_normvector_to_mcool.output_mcool',
      type: ['null', File]}, {id: '#output_normvector', type: ['null', File], source: '#extract_mcool_normvector_for_juicebox.output_normvector'}],
  steps: [{id: '#add_hic_normvector_to_mcool', outputs: [{id: '#add_hic_normvector_to_mcool.output_mcool'}],
      run: add-hic-normvector-to-mcool.cwl, inputs: [{id: '#add_hic_normvector_to_mcool.outdir'},
        {id: '#add_hic_normvector_to_mcool.input_mcool', source: '#cool2mcool.output_mcool'},
        {id: '#add_hic_normvector_to_mcool.input_hic', source: '#input_hic'}]}, {
      id: '#extract_mcool_normvector_for_juicebox', outputs: [{id: '#extract_mcool_normvector_for_juicebox.output_normvector'}],
      run: extract-mcool-normvector-for-juicebox.cwl, inputs: [{id: '#extract_mcool_normvector_for_juicebox.output_prefix'},
        {id: '#extract_mcool_normvector_for_juicebox.outdir'}, {id: '#extract_mcool_normvector_for_juicebox.nres',
          source: '#nres'}, {id: '#extract_mcool_normvector_for_juicebox.input_mcool',
          source: '#add_hic_normvector_to_mcool.output_mcool'}]}, {id: '#cool2mcool',
      outputs: [{id: '#cool2mcool.output_mcool'}], run: cool2mcool.cwl, inputs: [
        {id: '#cool2mcool.input_cool', source: '#input_cool'}, {id: '#cool2mcool.ncores',
          source: '#ncores'}, {id: '#cool2mcool.outprefix'}]}], requirements: [{class: InlineJavascriptRequirement}],
  class: Workflow}

