{
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
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
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "separate": false,
                "position": 1
            },
            "type": [
                "File"
            ]
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
            "inputBinding": {
                "separate": false,
                "position": 2
            },
            "type": [
                "string"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "separate": false,
                "position": 3
            },
            "type": [
                "int"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": false,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#chrlen_file",
            "inputBinding": {
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": []
}