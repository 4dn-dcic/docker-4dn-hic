{
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_file"
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
    "baseCommand": [
        "run.sh"
    ],
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
    ]
}