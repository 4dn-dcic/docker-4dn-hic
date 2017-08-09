{
    "class": "CommandLineTool",
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ],
    "arguments": [],
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
    "requirements": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh"
    ]
}