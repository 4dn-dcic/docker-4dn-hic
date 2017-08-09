{
    "requirements": [],
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
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
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ]
        }
    ]
}