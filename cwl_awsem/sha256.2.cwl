{
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
    "class": "CommandLineTool",
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [],
    "cwlVersion": "draft3"
}