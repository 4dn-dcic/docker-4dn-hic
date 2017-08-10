{
    "arguments": [],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_bam"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#out_prefix"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_index"
        }
    ],
    "baseCommand": [
        "run.sh"
    ]
}