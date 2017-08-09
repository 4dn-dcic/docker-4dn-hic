{
    "arguments": [],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "id": "#input_bam1"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "id": "#input_bam2"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 4,
                "separate": false
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "id": "#RE_bed"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
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
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5"
        }
    ]
}