{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix"
        }
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
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "default": "50000",
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize"
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
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
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
    ]
}