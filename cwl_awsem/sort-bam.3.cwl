{
    "class": "CommandLineTool",
    "arguments": [],
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
            "id": "#prefix",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": "out"
        }
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
    "hints": [
        {
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run.sh"
    ]
}