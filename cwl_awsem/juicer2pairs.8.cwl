{
    "inputs": [
        {
            "id": "#input_merged_nodups",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        },
        {
            "id": "#chromsize",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        },
        {
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ],
            "default": 100,
            "inputBinding": {
                "position": 1,
                "separate": true,
                "prefix": "-s"
            }
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "position": 5,
                "separate": true
            }
        },
        {
            "id": "#max_remove_mapq",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true,
                "prefix": "-m"
            }
        }
    ],
    "cwlVersion": "draft-3",
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
            "id": "#out_pairs_px",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "baseCommand": [
        "merged_nodup2pairs.pl"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ]
}