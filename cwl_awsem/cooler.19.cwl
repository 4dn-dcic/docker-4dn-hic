{
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.cool"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool"
        }
    ],
    "inputs": [
        {
            "id": "#pairs",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "id": "#binsize",
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "position": 5
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "inputBinding": {
                "separate": true,
                "position": 4
            }
        },
        {
            "id": "#max_split",
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "draft3",
    "class": "CommandLineTool",
    "requirements": []
}