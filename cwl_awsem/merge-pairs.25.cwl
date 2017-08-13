{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ],
    "arguments": [],
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
            "default": "out",
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
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index",
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz.px2')"
            }
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}