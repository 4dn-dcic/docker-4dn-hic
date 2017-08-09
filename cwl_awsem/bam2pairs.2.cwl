{
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#out_prefix",
            "default": "out",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh"
    ],
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "arguments": []
}