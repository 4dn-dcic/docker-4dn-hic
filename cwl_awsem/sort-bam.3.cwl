{
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix"
        }
    ],
    "cwlVersion": "draft-3",
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
    "requirements": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool"
}