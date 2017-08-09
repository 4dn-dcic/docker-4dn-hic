{
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 1,
                "separate": true
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
                "itemSeparator": " ",
                "position": 2,
                "separate": true
            }
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft3",
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
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
    ]
}