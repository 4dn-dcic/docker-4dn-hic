{
    "arguments": [],
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
    "inputs": [
        {
            "id": "#input_mcool",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "default": ".",
            "id": "#outdir",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "default": "out",
            "id": "#output_prefix",
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "default": 13,
            "id": "#nres",
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:dev"
        }
    ]
}
