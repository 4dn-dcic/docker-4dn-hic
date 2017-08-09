{
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
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "cwlVersion": "draft3",
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\""
            }
        }
    ],
    "baseCommand": [
        "run.sh"
    ]
}