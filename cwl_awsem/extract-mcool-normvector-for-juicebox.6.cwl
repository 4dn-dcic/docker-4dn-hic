{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "id": "#output_normvector"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_mcool",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "default": "."
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "default": "out"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#nres",
            "default": 13,
            "inputBinding": {
                "separate": true,
                "position": 4
            }
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool"
}