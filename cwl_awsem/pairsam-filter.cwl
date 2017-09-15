{
    "baseCommand": [
        "run-pairsam-filter.sh"
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#pairsam"
        },
        {
            "default": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#outprefix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#chrsizes"
        },

    ],
     "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.lossless.bam')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#lossless_bamfile"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.dedup.pairs.gz')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#dedup_pairs"
        }
    ],
     "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.unmapped.sam.pairs.gz')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#unmapped_pairsam"
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v40",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool"
}
