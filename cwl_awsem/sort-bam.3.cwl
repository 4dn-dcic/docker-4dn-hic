{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_bam"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#prefix"
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
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "requirements": [],
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index"
        }
    ]
}