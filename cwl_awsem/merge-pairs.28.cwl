{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "id": "#outprefix"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2,
                "itemSeparator": " "
            },
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ]
        }
    ],
    "outputs": [
        {
            "secondaryFiles": [
                ".px2"
            ],
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "id": "#output_pairs"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}