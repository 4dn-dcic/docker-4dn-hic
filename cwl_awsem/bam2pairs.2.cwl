{
    "hints": [
        {
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "cwlVersion": "draft3",
    "requirements": [],
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "inputs": [
        {
            "type": [
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
            "id": "#out_prefix"
        }
    ],
    "class": "CommandLineTool"
}