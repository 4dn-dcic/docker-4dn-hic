{
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "arguments": [],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "itemSeparator": null,
                "position": 1,
                "separate": true
            },
            "description": "Input file.",
            "id": "#input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "default": 1
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#outdir",
            "default": "."
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "id": "#report_zip",
            "description": "Zip archive of the report."
        }
    ]
}