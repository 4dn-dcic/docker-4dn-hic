{
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
    "arguments": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ]
}