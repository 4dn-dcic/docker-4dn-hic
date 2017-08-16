{
    "baseCommand": [
        "run.sh"
    ],
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
    "class": "CommandLineTool",
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": []
}