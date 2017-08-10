{
    "baseCommand": [
        "run.sh"
    ],
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
    "cwlVersion": "draft-3",
    "requirements": [],
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
            "outputBinding": {
                "glob": "\"report\""
            },
            "id": "#report"
        }
    ],
    "class": "CommandLineTool",
    "arguments": []
}