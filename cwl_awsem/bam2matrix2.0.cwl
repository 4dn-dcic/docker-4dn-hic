{
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
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
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            }
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft3",
    "arguments": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "id": "#HiC_norm_binning_hdf5",
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
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "id": "#chromosome",
            "type": [
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 5,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "separate": false
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": false
            },
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}