{
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
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
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
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
                "separate": true,
                "position": 4
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
                "separate": true,
                "position": 5
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
                "separate": true,
                "position": 6
            },
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "default": "14g"
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
    "arguments": [],
    "requirements": []
}