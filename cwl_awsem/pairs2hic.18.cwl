{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        }
    ],
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
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "default": "out"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "default": 5000,
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 5
            },
            "default": "1",
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ]
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
            "id": "#maxmem",
            "default": "14g"
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ]
}