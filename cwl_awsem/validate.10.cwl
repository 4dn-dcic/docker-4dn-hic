{
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
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
                "glob": "\"report_validatefiles\""
            },
            "id": "#report"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        },
        {
            "inputBinding": {
                "separate": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                },
                "position": 2
            },
            "type": [
                "null",
                {
                    "name": "type",
                    "type": "enum",
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ]
                }
            ],
            "default": "fastq",
            "id": "#type"
        }
    ],
    "arguments": []
}