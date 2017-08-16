{
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
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/fend_object.hdf5')"
            },
            "id": "#fend_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_data_object.hdf5')"
            },
            "id": "#HiC_data_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_distance_function.hdf5')"
            },
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_norm_binning.hdf5')"
            },
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_project_object.hdf5' )"
            },
            "id": "#HiC_project_object_hdf5"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
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
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "type": [
                "File"
            ],
            "id": "#input_bam1"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "type": [
                "File"
            ],
            "id": "#input_bam2"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": false,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                }
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed"
        }
    ]
}