{
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
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#chromsizes_file",
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
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        },
        {
            "default": 5000,
            "id": "#min_res",
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "default": "1",
            "id": "#higlass",
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "default": "14g",
            "inputBinding": {
                "separate": true,
                "position": 6
            }
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ]
}