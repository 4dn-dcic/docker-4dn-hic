{
    "outputs": [
        {
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "secondaryFiles": [
                ".px2"
            ],
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            }
        }
    ],
    "baseCommand": [
        "run-pairs-patch.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v40",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "arguments": [],
    "inputs": [
        {
            "id": "#outprefix",
            "inputBinding": {
                "position": 2,
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
                "itemSeparator": " ",
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
