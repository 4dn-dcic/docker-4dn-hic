{
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
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
            }
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
            }
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
            }
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
            }
        }
    ],
    "outputs": [
        {
            "id": "#output_hic",
            "outputBinding": {
                "glob": "*.hic"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft3",
    "arguments": [],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "requirements": []
}