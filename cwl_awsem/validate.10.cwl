{
    "baseCommand": [
        "run.sh",
        ""
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
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
                "separate": true,
                "valueFrom": {
                    "class": "Expression",
                    "script": "\"fastq\"",
                    "engine": "#cwl-js-engine"
                }
            },
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
            "id": "#type"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
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
    ]
}