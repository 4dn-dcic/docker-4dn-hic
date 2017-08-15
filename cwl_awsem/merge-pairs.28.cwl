{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "outputs": [
        {
            "id": "#output_pairs",
            "secondaryFiles": [
                ".px2"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "id": "#outprefix",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "default": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "itemSeparator": " ",
                "position": 2
            },
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ]
}