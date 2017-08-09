{
    "baseCommand": [
        "run-cooler.sh"
    ],
    "class": "CommandLineTool",
    "requirements": [],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#pairs",
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
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "id": "#outprefix",
            "default": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "id": "#ncores",
            "default": "8",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "default": "2",
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "arguments": [],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v31"
        }
    ]
}