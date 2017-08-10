{
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "requirements": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "description": "Input file.",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "itemSeparator": null
            },
            "id": "#input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 1,
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#threads"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "id": "#outdir",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        }
    ],
    "arguments": [],
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
    ]
}