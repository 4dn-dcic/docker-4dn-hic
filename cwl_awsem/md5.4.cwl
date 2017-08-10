{
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run.sh"
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
    "class": "CommandLineTool",
    "requirements": []
}