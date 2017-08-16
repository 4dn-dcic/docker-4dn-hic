{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
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
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "type": [
                "null",
                "File"
            ],
            "secondaryFiles": [
                ".px2"
            ],
            "id": "#output_pairs"
        }
    ]
}