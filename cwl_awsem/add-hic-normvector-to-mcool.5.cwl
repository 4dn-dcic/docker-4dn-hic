{
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_hic"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_mcool"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir",
            "default": "."
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outdir + '*.mcool')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ]
}