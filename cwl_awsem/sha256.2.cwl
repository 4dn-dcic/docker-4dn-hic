{
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
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
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
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
    "requirements": [],
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ]
}