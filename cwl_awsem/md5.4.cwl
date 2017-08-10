{
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "requirements": [],
    "baseCommand": [
        "run.sh"
    ],
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
    "hints": [
        {
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement"
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
    "arguments": []
}