{
    "baseCommand": [
        "run.sh"
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
    "requirements": [],
    "arguments": [],
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
    "cwlVersion": "draft3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "class": "CommandLineTool"
}