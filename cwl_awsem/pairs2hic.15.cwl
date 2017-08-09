{
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.hic"
            },
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
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
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out"
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
            ],
            "default": "5000"
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
            ],
            "default": "1"
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "default": "14g"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [],
    "arguments": [],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ]
}