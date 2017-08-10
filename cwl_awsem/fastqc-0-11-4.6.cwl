{
    "class": "CommandLineTool",
    "inputs": [
        {
            "description": "Input file.",
            "type": [
                "File"
            ],
            "id": "#input_fastq",
            "inputBinding": {
                "position": 1,
                "itemSeparator": null,
                "separate": true
            }
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ],
            "id": "#threads",
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
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-fastqc.sh"
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
    "arguments": [],
    "requirements": []
}