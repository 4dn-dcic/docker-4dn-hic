{
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
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
                "separate": true,
                "position": 1
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
            "id": "#type",
            "inputBinding": {
                "separate": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "\"fastq\""
                },
                "position": 2
            },
            "default": "fastq"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "arguments": [],
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
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
    ]
}