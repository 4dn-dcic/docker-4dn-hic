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
            "id": "#input_cool"
        },
        {
            "default": 4,
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "default": "out",
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
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