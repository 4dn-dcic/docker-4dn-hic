{
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "default": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "inputBinding": {
                "itemSeparator": " ",
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "id": "#input_pairs"
        }
    ],
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
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ]
}