{
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "description": "Zip archive of the report.",
            "id": "#report_zip",
            "outputBinding": {
                "glob": "*_fastqc.zip"
            }
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "description": "Input file.",
            "inputBinding": {
                "itemSeparator": null,
                "separate": true,
                "position": 1
            },
            "id": "#input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "default": 1,
            "id": "#threads"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "default": ".",
            "id": "#outdir"
        }
    ]
}