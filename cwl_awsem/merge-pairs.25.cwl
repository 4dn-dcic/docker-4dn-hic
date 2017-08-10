{
    "inputs": [
        {
            "default": "out",
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "inputBinding": {
                "position": 2,
                "separate": true,
                "itemSeparator": " "
            }
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz'"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index"
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
    "cwlVersion": "draft-3"
}