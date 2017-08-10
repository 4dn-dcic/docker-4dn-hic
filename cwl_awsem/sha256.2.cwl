{
    "arguments": [],
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
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
    "requirements": []
}