{
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "outputs": [
        {
            "id": "#output_normvector",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "inputs": [
        {
            "id": "#input_mcool",
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
            "default": ".",
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "default": "out",
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        },
        {
            "default": 13,
            "id": "#nres",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ]
}