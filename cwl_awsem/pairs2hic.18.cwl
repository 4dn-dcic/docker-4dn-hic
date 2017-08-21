{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.hic"
            }
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#input_pairs",
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
            "id": "#chromsizes_file",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": "out"
        },
        {
            "default": 5000,
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        },
        {
            "default": "1",
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": true
            }
        },
        {
            "id": "#maxmem",
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": "14g"
        }
    ],
    "class": "CommandLineTool"
}