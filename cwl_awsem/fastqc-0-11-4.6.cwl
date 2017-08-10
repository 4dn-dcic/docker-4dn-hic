{
    "outputs": [
        {
            "description": "Zip archive of the report.",
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*_fastqc.zip"
            }
        }
    ],
    "requirements": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "class": "CommandLineTool",
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "inputs": [
        {
            "description": "Input file.",
            "id": "#input_fastq",
            "type": [
                "File"
            ],
            "inputBinding": {
                "itemSeparator": null,
                "separate": true,
                "position": 1
            }
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "default": "1",
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "id": "#outdir"
        }
    ]
}