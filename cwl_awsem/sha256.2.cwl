{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}