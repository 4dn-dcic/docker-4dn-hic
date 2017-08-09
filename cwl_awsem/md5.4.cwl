{
    "requirements": [],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
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
                "glob": "\"report\""
            },
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ]
}