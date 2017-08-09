{
    "class": "CommandLineTool",
    "inputs": [
        {
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
            "id": "#chromosome",
            "type": [
                "string"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#chrlen_file",
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
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}