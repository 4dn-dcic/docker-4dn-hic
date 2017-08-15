{
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
    "class": "CommandLineTool",
    "inputs": [
        {
            "description": "Input file.",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "itemSeparator": null
            },
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "default": 1,
            "id": "#threads",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#outdir",
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "default": ".",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "description": "Zip archive of the report.",
            "id": "#report_zip",
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": []
}