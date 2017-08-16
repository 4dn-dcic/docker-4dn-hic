{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_normvector",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            }
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_mcool"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#outdir"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#output_prefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 13,
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "id": "#nres"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-mcool2hic.sh"
    ]
}