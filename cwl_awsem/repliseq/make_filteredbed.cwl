{
    "outputs": [
        {
            "id": "#out_filtered_bed",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.filtered.bed')"
            }
        }
    ],
    "baseCommand": [
        "make_filteredbed"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v7",
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
