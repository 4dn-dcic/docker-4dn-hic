{
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "class": "CommandLineTool",
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
    "requirements": [],
    "inputs": [
        {
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#prefix",
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ]
        }
    ]
}