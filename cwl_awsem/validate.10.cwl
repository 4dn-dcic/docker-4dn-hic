{
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "cwlVersion": "draft3",
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
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "arguments": []
}