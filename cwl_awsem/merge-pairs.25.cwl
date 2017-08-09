{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "itemSeparator": " ",
                "position": 2,
                "separate": true
            },
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ]
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "class": "CommandLineTool",
    "outputs": [
        {
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ]
}