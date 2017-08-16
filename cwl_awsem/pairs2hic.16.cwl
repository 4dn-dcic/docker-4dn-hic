{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
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
    "arguments": [],
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
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": "out"
        },
        {
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": 5000
        },
        {
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "default": "1"
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "default": "14g"
        }
    ]
}