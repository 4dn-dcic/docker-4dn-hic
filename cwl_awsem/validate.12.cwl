{
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "report_validatefiles"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": "fastq",
            "type": [
                "null",
                {
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "type": "enum",
                    "name": "type"
                }
            ],
            "id": "#type"
        }
    ]
}