{
    "cwlVersion": "draft3",
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        }
    ],
    "requirements": [],
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ]
}