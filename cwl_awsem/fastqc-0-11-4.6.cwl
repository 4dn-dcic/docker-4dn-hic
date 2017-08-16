{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "description": "Zip archive of the report.",
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "inputs": [
        {
            "description": "Input file.",
            "inputBinding": {
                "itemSeparator": null,
                "position": 1,
                "separate": true
            },
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "default": 1,
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "id": "#threads",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "default": ".",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool"
}