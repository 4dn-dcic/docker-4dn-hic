{
    "cwlVersion": "draft-3",
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
            "default": "fastq",
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
                    "name": "type",
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
    "baseCommand": [
        "run.sh",
        ""
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}