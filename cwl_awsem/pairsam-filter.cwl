{
    "baseCommand": [
        "pipeline_Sorted2noDups.sh"
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
    ],
     "outputs": [
        {
            "outputBinding": {
                "glob": "$(outprefix + '.lossless.bam')"
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
                "glob": "$(outprefix + '.dedup.pairs.gz')"
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
                "glob": "$(outprefix + '.unmapped.sam.pairs.gz')"
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
            "dockerPull": "duplexa/4dn-hic:v35",
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