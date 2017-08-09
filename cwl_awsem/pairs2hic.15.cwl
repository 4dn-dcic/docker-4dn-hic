{
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "class": "CommandLineTool",
    "requirements": [],
    "arguments": [],
    "cwlVersion": "draft3",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": true
            },
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
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem"
        }
    ]
}