{
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            }
        }
    ],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
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
                    "type": "enum",
                    "name": "type"
                }
            ],
            "id": "#type"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "arguments": [],
    "cwlVersion": "draft3"
}