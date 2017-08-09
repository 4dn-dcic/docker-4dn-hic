{
    "hints": [
        {
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement"
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
    "arguments": [],
    "cwlVersion": "draft3",
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
    "baseCommand": [
        "run.sh"
    ]
}