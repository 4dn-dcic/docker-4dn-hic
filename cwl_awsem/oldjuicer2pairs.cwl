{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "old_merged_nodup2pairs.pl"
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_px",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#input_merged_nodups",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "id": "#chromsize",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 1,
                "separate": true,
                "prefix": "-s"
            },
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ],
            "default": 100
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true,
                "prefix": "-m"
            },
            "id": "#max_remove_mapq",
            "type": [
                "null",
                "int"
            ]
        }
    ]
}
