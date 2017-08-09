{
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "arguments": [],
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
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
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
            "default": "fastq",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
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
    ]
}