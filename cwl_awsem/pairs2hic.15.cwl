{
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-juicebox-pre.sh"
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
            "default": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "inputBinding": {
                "separate": true,
                "position": 3
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
                "separate": true,
                "position": 4
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
                "separate": true,
                "position": 5
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
                "separate": true,
                "position": 6
            }
        }
    ],
    "requirements": [],
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
    "arguments": []
}