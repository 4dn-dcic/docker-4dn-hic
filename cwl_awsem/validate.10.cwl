{
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
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
            ],
            "id": "#type",
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "\"fastq\""
                },
                "position": 2,
                "separate": true
            },
            "default": "fastq"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            }
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}