{
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32"
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
                "position": 1,
                "separate": true
            },
            "id": "#input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 1,
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#outdir"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "description": "Zip archive of the report.",
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "id": "#report_zip"
        }
    ],
    "arguments": []
}