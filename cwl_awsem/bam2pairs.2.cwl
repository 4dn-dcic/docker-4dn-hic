{
    "outputs": [
        {
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "requirements": [],
    "cwlVersion": "draft3",
    "class": "CommandLineTool",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_bam",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "baseCommand": [
        "run.sh"
    ]
}