{
    "baseCommand": [
        "run-cooler.sh"
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#pairs",
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ],
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "default": "out",
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
            "default": 8,
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
            "default": 2,
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
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
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
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}