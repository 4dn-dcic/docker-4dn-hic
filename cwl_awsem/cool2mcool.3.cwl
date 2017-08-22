{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v17",
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
    "outputs": [
        {
            "id": "#output_mcool",
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "arguments": [],
    "inputs": [
        {
            "id": "#input_cool",
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
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
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
                "separate": true,
                "position": 3
            },
            "default": "out"
        }
    ]
}