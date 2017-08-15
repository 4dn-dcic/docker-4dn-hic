{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
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
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "secondaryFiles": [
                "$(self.path + '.px2')"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "position": 5
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 8,
            "id": "#ncores",
            "inputBinding": {
                "separate": true,
                "position": 4
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 2,
            "id": "#max_split",
            "inputBinding": {
                "separate": true,
                "position": 6
            }
        }
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "cwlVersion": "draft-3"
}