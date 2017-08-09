{
    "arguments": [],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            }
        }
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "separate": false,
                "position": 1
            }
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
            "type": [
                "string"
            ],
            "id": "#chromosome",
            "inputBinding": {
                "separate": false,
                "position": 2
            }
        },
        {
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "default": "50000",
            "inputBinding": {
                "separate": false,
                "position": 3
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "position": 5,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file",
            "inputBinding": {
                "separate": false,
                "position": 4
            }
        }
    ],
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
    "baseCommand": [
        "run.sh"
    ]
}