{
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_hic",
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
            "id": "#input_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#outdir",
            "default": ".",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "arguments": []
}