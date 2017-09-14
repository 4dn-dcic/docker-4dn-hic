{
    "baseCommand": [
        "pairsam-parse-sort.sh"
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
            "id": "#bam"
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
            "id": "#chromsize"
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
                "int"
            ],
            "id": "#Threads",
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": 8
        },
        { "default": "lz4c",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "id": "#compress_programm"
        },

    ],
     "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.sam.pairs.gz')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs"
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
