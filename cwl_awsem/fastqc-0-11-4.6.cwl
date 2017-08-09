{
    "cwlVersion": "draft-3",
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32"
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "itemSeparator": null,
                "separate": true
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq",
            "description": "Input file."
        },
        {
            "default": "1",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads"
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
    "class": "CommandLineTool",
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
    "requirements": []
}