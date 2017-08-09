{
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        }
    ],
    "requirements": [],
    "cwlVersion": "draft3",
    "baseCommand": [
        "run.sh"
    ]
}