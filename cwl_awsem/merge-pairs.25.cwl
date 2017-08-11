{
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "outputs": [
        {
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            }
        },
        {
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz.px2')"
            }
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#outprefix",
            "default": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "itemSeparator": " ",
                "separate": true,
                "position": 2
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3"
}