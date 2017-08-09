{
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
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "itemSeparator": " ",
                "position": 2
            }
        }
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
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
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ]
}