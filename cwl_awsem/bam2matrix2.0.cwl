{
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
            "default": 50000,
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
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "separate": false
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
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement"
        }
    ]
}