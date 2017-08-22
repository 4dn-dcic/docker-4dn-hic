{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "secondaryFiles": [
                ".px2"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "id": "#output_pairs"
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
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
                "itemSeparator": " ",
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
    ]
}