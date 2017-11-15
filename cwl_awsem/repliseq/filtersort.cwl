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
                "null",
                "int"
            ],
            "id": "#nextrathreads",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": 0
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#memperthread",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": "5G"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 5,
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
                "position": 4,
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
            "id": "#out_filtered_sorted_bam",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.q20_sorted.bam')"
            }
        }
    ],
    "baseCommand": [
        "filtersort"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
