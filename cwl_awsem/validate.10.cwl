{
    "arguments": [],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                }
            },
            "id": "#type",
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
            ]
        }
    ],
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
    ]
}