{
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "id": "#out_prefix"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
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
    "cwlVersion": "draft-3"
}