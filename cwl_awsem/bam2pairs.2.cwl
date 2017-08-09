{
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
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
            "id": "#out_prefix",
            "default": "out"
        }
    ],
    "class": "CommandLineTool",
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
    "hints": [
        {
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
    "requirements": []
}