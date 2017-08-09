{
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_bam",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "cwlVersion": "draft3",
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs"
        },
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index"
        }
    ]
}