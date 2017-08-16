{
    "arguments": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.hic"
            },
            "id": "#output_hic"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v33",
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
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_pairs"
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
            "id": "#chromsizes_file"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#output_prefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 5000,
            "id": "#min_res",
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "1",
            "id": "#higlass",
            "inputBinding": {
                "position": 5,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "14g",
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "id": "#maxmem"
        }
    ]
}