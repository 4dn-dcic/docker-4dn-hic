{
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
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
            "id": "#out_prefix"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "requirements": []
}