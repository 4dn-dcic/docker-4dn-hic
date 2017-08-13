{
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32"
        }
    ],
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
    "inputs": [
        {
            "type": [
                "File"
            ],
            "description": "Input file.",
            "id": "#input_fastq",
            "inputBinding": {
                "separate": true,
                "itemSeparator": null,
                "position": 1
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "default": 1
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir",
            "default": ".",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "requirements": [],
    "cwlVersion": "draft-3",
    "arguments": []
}