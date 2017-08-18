{
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "inputs": [
        {
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ],
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
            "default": "out",
            "id": "#outprefix",
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
            "default": 8,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "default": 2,
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "id": "#max_split",
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": []
}