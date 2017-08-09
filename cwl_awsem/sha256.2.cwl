{
    "arguments": [],
    "cwlVersion": "draft3",
    "requirements": [],
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "id": "#report"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_file"
        }
    ],
    "baseCommand": [
        "run.sh"
    ]
}