{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "default": "out",
            "inputBinding": {
                "position": 5,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "default": 8,
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "default": 2,
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v34",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
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
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": []
}