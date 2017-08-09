{
    "cwlVersion": "draft-3",
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs_index"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#outprefix"
        },
        {
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "inputBinding": {
                "separate": true,
                "position": 2,
                "itemSeparator": " "
            },
            "id": "#input_pairs"
        }
    ]
}