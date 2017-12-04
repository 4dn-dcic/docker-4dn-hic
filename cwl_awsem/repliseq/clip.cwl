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
            "id": "#input_fastq",
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
                "position": 2,
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
                "position": 1,
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
            "id": "#out_clipped_fastq",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.clip.fastq')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_log",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.clip.fastq.log')"
            }
        }
    ],
    "baseCommand": [
        "clip"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
