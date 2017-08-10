{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz'"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'"
                }
            }
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "inputs": [
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out",
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
    ]
}