{
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
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
            "id": "#max_split",
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ]
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
    "requirements": []
}