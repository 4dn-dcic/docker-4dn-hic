{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "baseCommand": [
        "run.sh"
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
            "id": "#report"
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "requirements": []
}