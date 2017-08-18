{
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": 4,
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": "out"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool"
        }
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v17"
        }
    ],
    "cwlVersion": "draft-3"
}