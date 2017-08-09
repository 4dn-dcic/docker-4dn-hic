{
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
    "requirements": [],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft3",
    "arguments": [],
    "inputs": [
        {
            "id": "#pairs",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
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
                "separate": true,
                "position": 2
            }
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 5
            }
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 4
            }
        },
        {
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 6
            }
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ]
}