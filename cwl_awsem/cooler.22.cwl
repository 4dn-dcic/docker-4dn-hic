{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "inputs": [
        {
            "id": "#pairs",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ]
        },
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "default": "out"
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "default": 8
        },
        {
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "default": 2
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.cool"
            }
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool"
}