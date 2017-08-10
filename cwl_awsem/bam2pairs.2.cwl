{
    "outputs": [
        {
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "requirements": [],
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "default": "out"
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ]
}