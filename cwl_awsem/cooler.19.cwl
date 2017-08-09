{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.cool"
            }
        }
    ],
    "inputs": [
        {
            "id": "#pairs",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            }
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
                "position": 4,
                "separate": true
            },
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "default": "8"
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ],
            "default": "2"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "draft-3",
    "requirements": [],
    "class": "CommandLineTool"
}