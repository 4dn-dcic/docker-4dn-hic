{
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "id": "#outprefix",
            "default": "out",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
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
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ]
}