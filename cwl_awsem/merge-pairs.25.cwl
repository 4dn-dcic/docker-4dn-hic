{
    "class": "CommandLineTool",
    "outputs": [
        {
            "id": "#output_pairs",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "arguments": [],
    "inputs": [
        {
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "itemSeparator": " "
            },
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ]
}