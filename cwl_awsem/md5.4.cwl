{
    "requirements": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\""
            }
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": []
}