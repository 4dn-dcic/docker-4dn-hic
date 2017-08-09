{
    "cwlVersion": "draft3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "requirements": [],
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic",
            "outputBinding": {
                "glob": "*.hic"
            }
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
            "id": "#output_prefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
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
            "id": "#maxmem"
        }
    ]
}