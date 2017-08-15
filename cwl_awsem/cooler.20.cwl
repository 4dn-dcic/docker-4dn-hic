{
    "requirements": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "secondaryFiles": [
                    "$(inputs.pairs + '.px2')"
                ],
                "position": 1,
                "separate": true
            },
            "id": "#pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#chrsizes"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            },
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
            "default": 8,
            "id": "#ncores"
        },
        {
            "default": 2,
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 6,
                "separate": true
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
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-cooler.sh"
    ]
}