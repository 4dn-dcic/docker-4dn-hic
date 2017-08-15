{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ],
            "default": "out",
            "id": "#output_prefix"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ],
            "default": 5000,
            "id": "#min_res"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ],
            "default": "1",
            "id": "#higlass"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 6
            },
            "type": [
                "null",
                "string"
            ],
            "default": "14g",
            "id": "#maxmem"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
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
    "arguments": [],
    "class": "CommandLineTool"
}