{
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' )"
            }
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' )"
            }
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' )"
            }
        },
        {
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' )"
            }
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt')"
            }
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "type": [
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "type": [
                "string"
            ],
            "id": "#chromosome"
        },
        {
            "default": 50000,
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize"
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": false,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}