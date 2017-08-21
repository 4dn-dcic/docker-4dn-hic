{
    "baseCommand": [
        "run.sh",
        ""
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "report_validatefiles"
            },
            "id": "#report"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_file"
        },
        {
            "type": [
                "null",
                {
                    "type": "enum",
                    "name": "type",
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ]
                }
            ],
            "inputBinding": {
                "separate": true,
                "position": 2,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "default": "fastq",
            "id": "#type"
        }
    ]
}