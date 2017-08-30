{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "report_validatefiles"
            },
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "arguments": [],
    "baseCommand": [
        "run.sh",
        ""
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
            "default": "fastq",
            "type": [
                "null",
                {
                    "name": "type",
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "type": "enum"
                }
            ]
        }
    ]
}