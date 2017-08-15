{
    "inputs": [
        {
            "id": "#input_fastq",
            "type": [
                "File"
            ],
            "description": "Input file.",
            "inputBinding": {
                "itemSeparator": null,
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "default": 1,
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        },
        {
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "inputBinding": {
                "separate": true,
                "position": 3
            }
        }
    ],
    "class": "CommandLineTool",
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32"
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "requirements": {
        "class": "InlineJavascriptRequirement"
    }
}