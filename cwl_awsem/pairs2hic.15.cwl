{
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "class": "CommandLineTool",
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
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#output_prefix",
            "default": "out"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "id": "#min_res",
            "default": 5000
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "id": "#higlass",
            "default": "1"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "id": "#maxmem",
            "default": "14g"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
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