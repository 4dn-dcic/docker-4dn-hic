{
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip",
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "description": "Zip archive of the report."
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32"
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "description": "Input file.",
            "id": "#input_fastq",
            "inputBinding": {
                "itemSeparator": null,
                "position": 1,
                "separate": true
            },
            "type": [
                "File"
            ]
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "default": 1
        },
        {
            "id": "#outdir",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": "."
        }
    ]
}