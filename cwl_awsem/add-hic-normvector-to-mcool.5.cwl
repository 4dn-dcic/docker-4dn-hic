{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_hic",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_mcool",
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "id": "#outdir",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        }
    ],
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
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
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": []
}