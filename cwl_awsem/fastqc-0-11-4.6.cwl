{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "inputs": [
        {
            "description": "Input file.",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "itemSeparator": null
            },
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "default": 1
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "default": "."
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32"
        }
    ],
    "outputs": [
        {
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "description": "Zip archive of the report."
        }
    ],
    "cwlVersion": "draft-3"
}