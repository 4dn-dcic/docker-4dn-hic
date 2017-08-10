{
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "arguments": [],
    "inputs": [
        {
            "id": "#pairs",
            "inputBinding": {
                "position": 1,
                "separate": true
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
            "id": "#chrsizes",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#binsize",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "default": "out",
            "id": "#outprefix",
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "default": 8,
            "id": "#ncores",
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "default": 2,
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 6,
                "separate": true
            }
        }
    ],
    "outputs": [
        {
            "id": "#out_cool",
            "outputBinding": {
                "glob": "*.cool"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "requirements": []
}