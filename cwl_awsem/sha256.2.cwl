{
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        }
    ],
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            }
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "requirements": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ],
    "baseCommand": [
        "run.sh"
    ]
}