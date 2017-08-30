{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' )"
            },
            "id": "#observed_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' )"
            },
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' )"
            },
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' )"
            },
            "id": "#expected_fend_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt')"
            },
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 1
            },
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
            "type": [
                "string"
            ],
            "inputBinding": {
                "separate": false,
                "position": 2
            },
            "id": "#chromosome"
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
            "inputBinding": {
                "separate": false,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "position": 5
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 4
            },
            "id": "#chrlen_file"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "arguments": []
}