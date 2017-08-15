{
    "cwlVersion": "draft-3",
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
    "inputs": [
        {
            "default": "out",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true,
                "itemSeparator": " "
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "secondaryFiles": [
                ".px2"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            }
        }
    ]
}