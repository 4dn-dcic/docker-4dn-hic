{
    "class": "CommandLineTool",
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
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
    ],
    "inputs": [
        {
            "secondaryFiles": [
                "$(self.path + '.px2')"
            ],
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
    ]
}