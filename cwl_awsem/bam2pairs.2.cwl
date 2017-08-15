{
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "cwlVersion": "draft-3",
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
    ],
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#out_prefix",
            "default": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        }
    ],
    "arguments": []
}