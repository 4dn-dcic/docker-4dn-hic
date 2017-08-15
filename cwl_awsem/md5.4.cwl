{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
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
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
    "cwlVersion": "draft-3",
    "arguments": []
}