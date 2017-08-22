{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ],
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
            "inputBinding": {
                "separate": true,
                "position": 5
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
                "separate": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ],
            "default": 8,
            "id": "#ncores"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "type": [
                "null",
                "int"
            ],
            "default": 2,
            "id": "#max_split"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": [],
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
    ]
}