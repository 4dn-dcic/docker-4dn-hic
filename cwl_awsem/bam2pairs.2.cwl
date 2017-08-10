{
    "inputs": [
        {
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#out_prefix",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ],
            "default": "out"
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
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
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ]
}