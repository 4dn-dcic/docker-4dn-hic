{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs_index"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "default": "out"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": "8"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split",
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "default": "2"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v31"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool",
            "outputBinding": {
                "glob": "*.cool"
            }
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "arguments": []
}