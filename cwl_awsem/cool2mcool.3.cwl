{
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "default": 4,
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
            "id": "#outprefix",
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
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
            "id": "#output_mcool",
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            }
        }
    ],
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v17",
            "class": "DockerRequirement"
        }
    ]
}