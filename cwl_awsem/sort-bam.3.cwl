{
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
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
            "id": "#prefix",
            "default": "out"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam",
            "outputBinding": {
                "glob": "*.sorted.bam"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam_index",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            }
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh"
    ]
}