{
    "outputs": [
        {
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "id": "#report_zip",
            "description": "Zip archive of the report.",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "itemSeparator": null,
                "separate": true
            },
            "description": "Input file.",
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "default": 1,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#outdir",
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool"
}