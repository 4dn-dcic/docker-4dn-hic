{
    "outputs": [
        {
            "id": "#fend_object_hdf5",
            "type": [
                "null",
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
            "id": "#HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#input_bam1",
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_bam2",
            "type": [
                "File"
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
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ]
}