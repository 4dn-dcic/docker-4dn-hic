{
    "arguments": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "inputs": [
        {
            "id": "#input_fastq",
            "type": [
                "File"
            ],
            "description": "Input file.",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "itemSeparator": null
            }
        },
        {
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "default": 1,
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": "."
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
        }
    ],
    "outputs": [
        {
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "description": "Zip archive of the report.",
            "outputBinding": {
                "glob": "*_fastqc.zip"
            }
        }
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}