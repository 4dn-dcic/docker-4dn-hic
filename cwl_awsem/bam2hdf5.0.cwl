{
    "inputs": [
        {
            "inputBinding": {
                "separate": false,
                "position": 1
            },
            "id": "#input_bam1",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 2
            },
            "id": "#input_bam2",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                }
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 3
            },
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft3",
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ]
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
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement"
        }
    ]
}