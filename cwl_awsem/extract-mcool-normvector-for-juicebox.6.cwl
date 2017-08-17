{
    "arguments": [],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#outdir",
            "default": ".",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#output_prefix",
            "default": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "id": "#nres",
            "default": 13,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "id": "#output_normvector",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ]
}