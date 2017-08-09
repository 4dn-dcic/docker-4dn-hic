{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "class": "CommandLineTool",
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
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "id": "#out_sorted_bam",
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_sorted_bam_index",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "requirements": []
}