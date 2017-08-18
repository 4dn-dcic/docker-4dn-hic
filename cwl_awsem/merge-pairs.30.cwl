{
    "cwlVersion": "draft-3",
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
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
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "outputs": [
        {
            "id": "#output_pairs",
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
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool"
}