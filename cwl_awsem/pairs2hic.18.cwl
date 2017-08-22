{
    "class": "CommandLineTool",
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
    "arguments": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": "out",
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": 5000,
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "default": "1",
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "default": "14g",
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ]
}