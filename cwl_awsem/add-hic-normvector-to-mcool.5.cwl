{
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
            "id": "#input_hic"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#input_mcool"
        },
        {
            "default": ".",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#outdir"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ]
}