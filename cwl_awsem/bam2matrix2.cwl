{
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' )"
            },
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' )"
            },
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' )"
            },
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' )"
            },
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt')"
            },
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement"
        }
    ],
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
            "type": [
                "string"
            ],
            "id": "#chromosome",
            "inputBinding": {
                "position": 2,
                "separate": false
            }
        },
        {
            "default": 50000,
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "position": 3,
                "separate": false
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "position": 5,
                "separate": false
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file",
            "inputBinding": {
                "position": 4,
                "separate": false
            }
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "v1.0",
    "baseCommand": [
        "run.sh"
    ]
}
