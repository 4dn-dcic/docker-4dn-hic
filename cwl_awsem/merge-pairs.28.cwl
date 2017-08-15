{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "default": "out",
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "inputBinding": {
                "separate": true,
                "itemSeparator": " ",
                "position": 2
            },
            "id": "#input_pairs"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "secondaryFiles": [
                ".px2"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        }
    ],
    "cwlVersion": "draft-3"
}