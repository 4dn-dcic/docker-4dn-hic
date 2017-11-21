{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v8",
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
            "id": "#input",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "File"
            ],
            "id": "#reference_bg",
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
            "id": "#outprefix",
            "inputBinding": {
                "position": 4,
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
                "position": 3,
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
            "id": "#out_norm_bg",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.qnorm.bg')"
            }
        }
    ],
    "baseCommand": [
        "normalize"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
