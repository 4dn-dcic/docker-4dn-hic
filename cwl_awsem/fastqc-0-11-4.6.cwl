{
    "arguments": [],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "requirements": [],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "itemSeparator": null,
                "position": 1
            },
            "id": "#input_fastq",
            "description": "Input file."
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#threads",
            "default": 1,
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
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
            "id": "#outdir",
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
    ],
    "class": "CommandLineTool"
}