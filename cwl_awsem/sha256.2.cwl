{
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "requirements": [],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
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
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ]
}