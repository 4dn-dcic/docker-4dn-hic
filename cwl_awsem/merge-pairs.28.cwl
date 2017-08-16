{
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
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
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "id": "#output_pairs",
            "secondaryFiles": [
                ".px2"
            ]
        }
    ],
    "arguments": []
}