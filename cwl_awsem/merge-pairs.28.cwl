{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "id": "#output_pairs",
            "secondaryFiles": [
                ".px2"
            ],
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out"
        },
        {
            "inputBinding": {
                "position": 2,
                "itemSeparator": " ",
                "separate": true
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
    "cwlVersion": "draft-3"
}