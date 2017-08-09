{
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "cwlVersion": "draft3",
    "arguments": [],
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
    "stdin": "",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\""
            },
            "id": "#report"
        }
    ]
}