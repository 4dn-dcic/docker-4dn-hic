{
    "baseCommand": [
        "fastqc"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "description": "Input file.",
            "id": "#input_fastq",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "itemSeparator": null
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "default": "1",
            "id": "#threads",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "prefix": "--threads"
            }
        }
    ],
    "class": "CommandLineTool",
    "requirements": [],
    "arguments": [],
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
    ]
}