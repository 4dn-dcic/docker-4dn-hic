{
    "class": "CommandLineTool",
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
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#out_prefix",
            "default": "out"
        }
    ],
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
    ],
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}