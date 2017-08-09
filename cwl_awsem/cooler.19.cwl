{
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v31"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "draft3",
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
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "id": "#max_split"
        }
    ],
    "requirements": [],
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
    "class": "CommandLineTool"
}