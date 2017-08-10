{
    "cwlVersion": "draft-3",
    "requirements": [],
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
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
            "id": "#prefix",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": "out"
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam",
            "outputBinding": {
                "glob": "*.sorted.bam"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam_index",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            }
        }
    ]
}