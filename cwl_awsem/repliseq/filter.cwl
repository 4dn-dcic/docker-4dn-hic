{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v10",
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
                "File"
            ],
            "id": "#filtered_bed",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "type": [
                
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
                
                "File"
            ],
            "id": "#out_filtered_bg",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.filtered.bg')"
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
