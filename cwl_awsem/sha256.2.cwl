{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "requirements": [],
    "arguments": [],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ]
}