{
    "outputs": [
        {
            "id": "#report_zip",
            "description": "Zip archive of the report.",
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_fastq",
            "description": "Input file.",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
                "itemSeparator": null
            }
        },
        {
            "default": 1,
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "default": ".",
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
        }
    ],
    "arguments": []
}