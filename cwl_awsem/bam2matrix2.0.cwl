{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false
            }
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
            "type": [
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": false
            }
        },
        {
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ],
            "inputBinding": {
                "position": 3,
                "separate": false
            }
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                }
            }
        },
        {
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 4,
                "separate": false
            }
        }
    ],
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#expected_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "cwlVersion": "draft3"
}