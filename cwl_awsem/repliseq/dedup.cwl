{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v9",
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
                "null",
                "string"
            ],
            "id": "#outprefix",
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
            "id": "#out_deduped_bam",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.rmdup.bam')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_log",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.rmdup.bam.log')"
            }
        }
    ],
    "baseCommand": [
        "dedup"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
