{class: Workflow, inputs: [{id: '#input_file', type: ['null', File]}], steps: [{id: '#md5',
      outputs: [{id: '#md5.report'}], run: md5.cwl, inputs: [{source: '#input_file',
          id: '#md5.input_file'}]}, {id: '#validatefiles', outputs: [{id: '#validatefiles.report'}],
      run: validate.cwl, inputs: [{source: '#input_file', id: '#validatefiles.input_file'},
        {id: '#validatefiles.type'}]}], outputs: [{type: ['null', File], id: '#validatefiles_report',
      source: '#validatefiles.report'}, {type: ['null', File], id: '#md5_report',
      source: '#md5.report'}], cwlVersion: draft-3, requirements: [{class: InlineJavascriptRequirement}]}

