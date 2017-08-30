{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
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
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_mcool"
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
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "default": 13
        }
    ],
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "class": "CommandLineTool"
}