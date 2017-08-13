{
    "arguments": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
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
            "default": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        },
        {
            "default": 5000,
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res",
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        },
        {
            "default": "1",
            "type": [
                "null",
                "string"
            ],
            "id": "#higlass",
            "inputBinding": {
                "position": 5,
                "separate": true
            }
        },
        {
            "default": "14g",
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "inputBinding": {
                "position": 6,
                "separate": true
            }
        }
    ],
    "requirements": []
}