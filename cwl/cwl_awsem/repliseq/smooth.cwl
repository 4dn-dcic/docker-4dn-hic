{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v11",
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
                "position": 4,
                "separate": true
            }
        },
        {
            "type": [
                "int"
            ],
            "id": "#lspan",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "prefix": "-l"
            },
            "default": 300000
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 3,
                "separate": true,
                "prefix": "-p"
            },
            "default": "out"
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#outdir",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "prefix": "-d"
            },
            "default": "."
        }
    ],
    "outputs": [
        {
            "type": [
                
                "File"
            ],
            "id": "#out_smooth_bg",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.loess' + inputs.lspan + '.bg')"
            }
        }
    ],
    "baseCommand": [
        "smooth"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
