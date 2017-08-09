{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "id": "#report"
        }
    ],
    "cwlVersion": "draft-3",
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
                "separate": true,
                "position": 1
            }
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "requirements": []
}