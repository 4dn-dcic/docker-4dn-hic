{
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "arguments": [],
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
    "inputs": [
        {
            "secondaryFiles": [
                "$(self.path + '.px2')"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
        },
        {
            "default": "out",
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "default": 8,
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "default": 2,
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split"
        }
    ]
}