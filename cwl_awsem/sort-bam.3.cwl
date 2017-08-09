{
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "requirements": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_bam"
        },
        {
            "default": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#prefix"
        }
    ],
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
    "baseCommand": [
        "run.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ]
}