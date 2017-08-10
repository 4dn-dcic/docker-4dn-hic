{
    "hints": [
        {
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/fend_object.hdf5')"
            },
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_data_object.hdf5')"
            },
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_distance_function.hdf5')"
            },
            "id": "#HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_norm_binning.hdf5')"
            },
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/HiC_project_object.hdf5' )"
            },
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "id": "#input_bam1",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "id": "#input_bam2",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "position": 4,
                "separate": false
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}