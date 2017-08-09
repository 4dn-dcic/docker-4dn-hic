{
    "outputs": [
        {
            "id": "#output_pairs",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_pairs_index",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
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
                "position": 2,
                "itemSeparator": " ",
                "separate": true
            },
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
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
    "baseCommand": [
        "run-merge-pairs.sh"
    ]
}