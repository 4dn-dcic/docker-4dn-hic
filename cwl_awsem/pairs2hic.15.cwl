{
    "cwlVersion": "draft-3",
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
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res",
            "default": "5000",
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
            "default": "14g",
            "inputBinding": {
                "separate": true,
                "position": 6
            }
        }
    ],
    "arguments": [],
    "requirements": [],
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ]
}