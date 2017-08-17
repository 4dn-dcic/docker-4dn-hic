{
    "arguments": [],
    "cwlVersion": "draft-3",
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
    ],
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "default": "out"
        },
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "inputBinding": {
                "separate": true,
                "position": 2,
                "itemSeparator": " "
            },
            "id": "#input_pairs"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v34",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool"
}