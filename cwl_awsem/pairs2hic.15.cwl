{
    "cwlVersion": "draft-3",
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
    "inputs": [
        {
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        },
        {
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 4
            }
        },
        {
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 5
            }
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 6
            }
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "requirements": [],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "arguments": []
}