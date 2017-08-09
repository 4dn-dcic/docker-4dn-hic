{
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
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
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
    ]
}