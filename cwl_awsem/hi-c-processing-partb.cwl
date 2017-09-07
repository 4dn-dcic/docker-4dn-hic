{outputs: [{type: ['null', File], source: '#merge_pairs.output_pairs', id: '#output_pairs'},
    {type: ['null', File], source: '#cooler.out_cool', id: '#out_cool'}, {type: [
        'null', File], source: '#pairs2hic.output_hic', id: '#output_hic'}], inputs: [
    {type: ['null', File], id: '#chrsizes'}, {type: ['null', {type: array, items: File}],
      id: '#input_pairs'}, {type: ['null', int], id: '#binsize'}, {type: ['null',
        int], id: '#ncores', default: 8}, {type: ['null', int], default: 5000, id: '#min_res'},
    {type: ['null', string], default: 14g, id: '#maxmem'}], class: Workflow, cwlVersion: draft-3,
  steps: [{outputs: [{id: '#merge_pairs.output_pairs'}], run: merge-pairs.cwl, inputs: [
        {id: '#merge_pairs.outprefix'}, {source: '#input_pairs', id: '#merge_pairs.input_pairs'}],
      id: '#merge_pairs'}, {outputs: [{id: '#cooler.out_cool'}], run: cooler.cwl,
      inputs: [{source: '#merge_pairs.output_pairs', id: '#cooler.pairs'}, {source: '#chrsizes',
          id: '#cooler.chrsizes'}, {source: '#binsize', id: '#cooler.binsize'}, {
          id: '#cooler.outprefix'}, {source: '#ncores', id: '#cooler.ncores'}, {id: '#cooler.max_split'}],
      id: '#cooler'}, {outputs: [{id: '#pairs2hic.output_hic'}], run: pairs2hic.cwl,
      inputs: [{source: '#merge_pairs.output_pairs', id: '#pairs2hic.input_pairs'},
        {source: '#chrsizes', id: '#pairs2hic.chromsizes_file'}, {id: '#pairs2hic.output_prefix'},
        {source: '#min_res', id: '#pairs2hic.min_res'}, {id: '#pairs2hic.higlass'},
        {source: '#maxmem', id: '#pairs2hic.maxmem'}], id: '#pairs2hic'}], requirements: [
    {class: InlineJavascriptRequirement}]}

