{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#outprefix"
        },
        {
            "inputBinding": {
                "position": 2,
                "itemSeparator": " ",
                "separate": true
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
    "class": "CommandLineTool",
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
    ],
    "arguments": []
}