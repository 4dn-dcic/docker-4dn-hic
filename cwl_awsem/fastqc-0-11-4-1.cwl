{outputs: [{outputSource: '#FastQC.report_zip', type: ['null', File], id: '#report_zip'}],
  cwlVersion: draft-3, class: Workflow, steps: [{in: [{source: '#threads', id: '#FastQC.threads'},
        {id: '#FastQC.outdir'}, {source: '#input_fastq', id: '#FastQC.input_fastq'}],
      out: [{id: '#FastQC.report_zip'}], run: fastqc-0-11-4.cwl, id: '#FastQC'}],
  inputs: [{type: [File], id: '#input_fastq'}, {default: 1, type: ['null', int], id: '#threads'}],
  requirements: [{class: InlineJavascriptRequirement}]}

