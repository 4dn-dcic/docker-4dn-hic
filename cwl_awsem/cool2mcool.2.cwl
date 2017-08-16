{
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "outputs": [
        {
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.multires.cool"
            }
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": 4
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": "out"
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v17"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}