{
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
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
                "position": 2,
                "separate": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "\"fastq\""
                }
            },
            "default": "fastq",
            "id": "#type",
            "type": [
                "null",
                {
                    "name": "type",
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "type": "enum"
                }
            ]
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh",
        ""
    ]
}