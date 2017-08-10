{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "requirements": [],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "class": "CommandLineTool",
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
            "default": "out",
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        },
        {
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "default": 5000,
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        },
        {
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ],
            "default": "1",
            "inputBinding": {
                "position": 5,
                "separate": true
            }
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "default": "14g",
            "inputBinding": {
                "position": 6,
                "separate": true
            }
        }
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
    "cwlVersion": "draft-3"
}