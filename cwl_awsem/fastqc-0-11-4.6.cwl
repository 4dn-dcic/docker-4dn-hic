{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "class": "DockerRequirement"
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
    "inputs": [
        {
            "description": "Input file.",
            "inputBinding": {
                "itemSeparator": null,
                "separate": true,
                "position": 1
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq"
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "int"
            ],
            "default": 1,
            "id": "#threads"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "id": "#outdir"
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "cwlVersion": "draft-3",
    "requirements": []
}