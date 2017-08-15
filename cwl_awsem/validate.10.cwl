{
    "cwlVersion": "draft-3",
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
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
                    "type": "enum",
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "name": "type"
                }
            ],
            "default": "fastq",
            "id": "#type",
            "inputBinding": {
                "position": 2,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                },
                "separate": true
            }
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            },
            "id": "#report"
        }
    ],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool"
}