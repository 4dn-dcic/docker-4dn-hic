{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic",
            "outputBinding": {
                "glob": "*.hic"
            }
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v34",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file",
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "default": "out"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res",
            "default": 5000,
            "inputBinding": {
                "separate": true,
                "position": 4
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#higlass",
            "default": "1",
            "inputBinding": {
                "separate": true,
                "position": 5
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "default": "14g"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ]
}