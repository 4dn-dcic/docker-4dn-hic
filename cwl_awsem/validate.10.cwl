{
    "hints": [
        {
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#type",
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
            ]
        }
    ],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ]
}