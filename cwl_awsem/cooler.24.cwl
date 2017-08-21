{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ],
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
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "default": "out",
            "id": "#outprefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": 8,
            "id": "#ncores"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "id": "#max_split",
            "default": 2
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
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
    ]
}