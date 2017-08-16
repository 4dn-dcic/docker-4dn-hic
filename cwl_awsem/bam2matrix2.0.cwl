{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
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
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chromosome",
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "type": [
                "string"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "type": [
                "int"
            ],
            "default": 50000
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "position": 5,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "separate": false
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#chrlen_file",
            "inputBinding": {
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ]
        }
    ]
}