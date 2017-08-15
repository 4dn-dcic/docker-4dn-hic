{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "inputs": [
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "default": "out"
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "inputBinding": {
                "position": 2,
                "itemSeparator": " ",
                "separate": true
            }
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "outputs": [
        {
            "outputBinding": {
                "secondaryFiles": [
                    "$job.inputs.outprefix + '.pairs.gz.px2'"
                ],
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "id": "#output_pairs",
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
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "class": "CommandLineTool"
}