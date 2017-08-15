{
    "baseCommand": [
        "run.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            }
        }
    ],
    "arguments": []
}