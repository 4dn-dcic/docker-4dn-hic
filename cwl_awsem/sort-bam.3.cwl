{
    "cwlVersion": "draft-3",
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam"
        },
        {
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam_index"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "id": "#prefix",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        }
    ],
    "class": "CommandLineTool"
}