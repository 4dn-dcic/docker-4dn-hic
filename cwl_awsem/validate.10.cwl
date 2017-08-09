{
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
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\""
                },
                "separate": true
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
            "id": "#type"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "cwlVersion": "draft3"
}