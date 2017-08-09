{
    "arguments": [],
    "cwlVersion": "draft3",
    "hints": [
        {
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
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
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "requirements": []
}