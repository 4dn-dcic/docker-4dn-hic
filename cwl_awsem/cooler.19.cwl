{
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": [],
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
    "cwlVersion": "draft-3",
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
            "default": "out",
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
            "default": "8",
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
            "default": "2",
            "id": "#max_split"
        }
    ],
    "requirements": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ]
}