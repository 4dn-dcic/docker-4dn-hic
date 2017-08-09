{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "class": "CommandLineTool",
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
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [],
    "arguments": []
}