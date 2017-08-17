{
    "inputs": [
        {
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ],
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
            "default": 8,
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
            "default": 2,
            "type": [
                "null",
                "int"
            ]
        }
    ],
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
    "baseCommand": [
        "run-cooler.sh"
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}