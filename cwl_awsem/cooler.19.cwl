{
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs_index"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "default": "out"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "default": 8
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split",
            "default": 2
        }
    ],
    "class": "CommandLineTool",
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
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": [],
    "requirements": [],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v31"
        }
    ]
}