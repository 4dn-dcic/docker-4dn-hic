{
    "class": "CommandLineTool",
    "arguments": [],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
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
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "inputBinding": {
                "separate": true,
                "position": 1
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
                "separate": true,
                "position": 2
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
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
            "default": 8,
            "id": "#ncores",
            "inputBinding": {
                "separate": true,
                "position": 4
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 2,
            "id": "#max_split",
            "inputBinding": {
                "separate": true,
                "position": 6
            }
        }
    ],
    "requirements": []
}