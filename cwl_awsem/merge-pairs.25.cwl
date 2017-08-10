{
    "arguments": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
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
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "itemSeparator": " "
            },
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz')"
            },
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.pairs.gz.px2')"
            },
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}