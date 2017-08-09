{
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
    "arguments": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
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
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split"
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v31"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ]
}