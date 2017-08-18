{
    "outputs": [
        {
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip",
            "description": "Zip archive of the report."
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
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
            "id": "#input_fastq",
            "inputBinding": {
                "separate": true,
                "itemSeparator": null,
                "position": 1
            },
            "description": "Input file."
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ],
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
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "default": "."
        }
    ],
    "arguments": []
}