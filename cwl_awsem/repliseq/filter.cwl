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
            "id": "#input_bg",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "float"
            ],
            "id": "#min_rpkm",
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": 0.1
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
            "id": "#out_filtered_bg",
            "outputBinding": {
                "glob": "*.filtered.bg"
            }
        }
    ],
    "baseCommand": [
        "filter"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
