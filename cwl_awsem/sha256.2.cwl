{
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [],
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft-3"
}