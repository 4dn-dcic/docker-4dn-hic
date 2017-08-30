{
    "arguments": [],
    "class": "CommandLineTool",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "default": "out",
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true,
                "itemSeparator": " "
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
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "secondaryFiles": [
                ".px2"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}