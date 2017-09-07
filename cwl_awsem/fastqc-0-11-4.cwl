{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v37"
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "itemSeparator": null
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#threads",
            "default": 1,
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
            "id": "#outdir",
            "default": ".",
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*_fastqc.zip"
            }
        }
    ]
}
