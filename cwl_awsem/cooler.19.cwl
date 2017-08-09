{
    "cwlVersion": "draft-3",
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
    "class": "CommandLineTool",
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
            "id": "#outprefix"
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
            "id": "#ncores"
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
            "id": "#max_split"
        }
    ],
    "requirements": [],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "arguments": []
}