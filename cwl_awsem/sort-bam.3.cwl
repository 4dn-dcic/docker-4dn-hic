{
    "baseCommand": [
        "run.sh"
    ],
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
    "requirements": [],
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
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement"
        }
    ],
    "arguments": []
}