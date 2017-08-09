{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "cwlVersion": "draft3",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
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
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'"
                }
            }
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ]
}