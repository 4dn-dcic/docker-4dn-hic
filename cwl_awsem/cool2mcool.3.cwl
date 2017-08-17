{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            }
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v17",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#input_cool",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#ncores",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "default": 4
        },
        {
            "id": "#outprefix",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": "out"
        }
    ]
}