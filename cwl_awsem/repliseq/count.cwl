{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v7",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "int"
            ],
            "id": "#winsize",
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": 5000
        },
        {
            "type": [
                "int"
            ],
            "id": "#minsize",
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "default": 10000000
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": "out"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": "."
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_count_bg",
            "outputBinding": {
                "glob": "*.bg"
            }
        }
    ],
    "baseCommand": [
        "count"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
