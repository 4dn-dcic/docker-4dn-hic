{outputs: [{id: '#out_pairs', type: ['null', File], source: '#juicer2pairs.out_pairs'},
    {id: '#out_pairs_index', type: ['null', File], source: '#juicer2pairs.out_pairs_px'},
    {id: '#merged_nodups', type: ['null', File], source: '#juicer.merged_nodups'}],
  cwlVersion: v1.0, steps: [{outputs: [{id: '#juicer.merged_nodups'}], inputs: [
        {id: '#juicer.input_fastq1', source: '#fastq1'}, {id: '#juicer.input_fastq2',
          source: '#fastq2'}, {id: '#juicer.bwaIndex', source: '#bwa_index'}, {id: '#juicer.reference_fasta',
          source: '#reference_fasta'}, {id: '#juicer.chromsizes_file', source: '#chrsizes'},
        {id: '#juicer.restriction_file', source: '#restriction_file'}, {id: '#juicer.outdir'},
        {id: '#juicer.ncores', source: '#ncores'}], run: juicer.cwl, id: '#juicer'},
    {outputs: [{id: '#juicer2pairs.out_pairs'}, {id: '#juicer2pairs.out_pairs_px'}],
      inputs: [{id: '#juicer2pairs.input_merged_nodups', source: '#juicer.merged_nodups'},
        {id: '#juicer2pairs.chromsize', source: '#chrsizes'}, {id: '#juicer2pairs.nsplit',
          source: '#nsplit'}, {id: '#juicer2pairs.outprefix'}, {id: '#juicer2pairs.max_remove_mapq',
          source: '#max_remove_mapq'}], run: juicer2pairs.cwl, id: '#juicer2pairs'}],
  requirements: [{class: InlineJavascriptRequirement}], class: Workflow, inputs: [
    {id: '#fastq1', type: [File]}, {id: '#fastq2', type: [File]}, {id: '#bwa_index',
      type: [File]}, {id: '#chrsizes', type: ['null', File]}, {id: '#reference_fasta',
      type: ['null', File]}, {id: '#restriction_file', type: ['null', File]}, {default: 8,
      type: ['null', int], id: '#ncores'}, {id: '#nsplit', type: ['null', int], default: 100},
    {id: '#max_remove_mapq', type: ['null', int]}]}

