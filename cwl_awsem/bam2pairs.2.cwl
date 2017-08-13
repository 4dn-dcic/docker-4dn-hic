{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "id": "#input_bam",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#out_prefix",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": "out",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "requirements": []
}