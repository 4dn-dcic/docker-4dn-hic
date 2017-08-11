{
    "class": "CommandLineTool",
    "arguments": [],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#chromsizes_file"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "default": "out",
            "id": "#output_prefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 5000,
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "id": "#min_res"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "1",
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "id": "#higlass"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "default": "14g",
            "id": "#maxmem"
        }
    ],
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
    "cwlVersion": "draft-3",
    "requirements": []
}