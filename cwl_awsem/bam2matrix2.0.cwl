{
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh"
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
            "default": 50000,
            "inputBinding": {
                "separate": false,
                "position": 3
            },
            "id": "#contact_matrix_binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 5
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
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' )"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' )"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' )"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' )"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt')"
            }
        }
    ]
}