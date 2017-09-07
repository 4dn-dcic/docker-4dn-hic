{
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "glob": "report_validatefiles"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#type",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                {
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "name": "type",
                    "type": "enum"
                }
            ],
            "default": "fastq"
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
