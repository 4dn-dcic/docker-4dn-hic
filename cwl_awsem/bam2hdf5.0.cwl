{
    "arguments": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/fend_object.hdf5')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_data_object.hdf5')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_distance_function.hdf5')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_norm_binning.hdf5')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_project_object.hdf5' )"
            }
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam1",
            "inputBinding": {
                "position": 1,
                "separate": false
            }
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_bam2",
            "inputBinding": {
                "position": 2,
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "position": 4,
                "separate": false
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed",
            "inputBinding": {
                "position": 3,
                "separate": false
            }
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement"
        }
    ]
}