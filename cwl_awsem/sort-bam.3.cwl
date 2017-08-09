{
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "arguments": [],
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
    ]
}