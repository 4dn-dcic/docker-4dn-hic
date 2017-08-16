{
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "id": "#output_mcool",
            "outputBinding": {
                "glob": "$(inputs.outdir + '*.mcool')"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#input_hic",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#input_mcool",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        }
    ]
}