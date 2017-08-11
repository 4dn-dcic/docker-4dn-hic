{
    "arguments": [],
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
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "default": "out",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement"
        }
    ],
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
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ]
}