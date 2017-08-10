{
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "class": "CommandLineTool",
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
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "requirements": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ]
}