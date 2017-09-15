{
    "baseCommand": [
        "run-pairsam-markasdup.sh"
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
            "id": "#input_pairsam"
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
                "glob": "$(inputs.outprefix + '.marked.sam.pairs.gz')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_markedpairsam"
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
