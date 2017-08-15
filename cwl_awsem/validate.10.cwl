{
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
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
            "default": "fastq",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#type",
            "type": [
                "null",
                {
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "name": "type",
                    "type": "enum"
                }
            ]
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            },
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh",
        ""
    ]
}