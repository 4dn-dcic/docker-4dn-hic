{
    "requirements": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
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
            "default": "5000",
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
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.hic"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "cwlVersion": "draft-3"
}