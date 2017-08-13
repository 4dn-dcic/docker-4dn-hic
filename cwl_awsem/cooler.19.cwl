{
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
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
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#chrsizes"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "id": "#outprefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 8,
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "id": "#ncores"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 2,
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "id": "#max_split"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.cool"
            },
            "id": "#out_cool"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "requirements": []
}