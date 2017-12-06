{
    "outputs": [
        {
            "id": "#out_reference_bg",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.inorm.bg')"
            }
        }
    ],
    "baseCommand": [
        "make_referencebg"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v10",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "arguments": [],
    "inputs": [
        {
            "id": "#outdir",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "default": ".",
            "type": [
                "null",
                "string"
            ]
        },
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
            "id": "#input_bgs",
            "inputBinding": {
                "itemSeparator": " ",
                "position": 3,
                "separate": true
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
