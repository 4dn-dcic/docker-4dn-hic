{
    "baseCommand": [
        "fastqc"
    ],
    "inputs": [
        {
            "id": "#input_fastq",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "itemSeparator": null
            },
            "description": "Input file.",
            "type": [
                "File"
            ]
        },
        {
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ],
            "default": "1",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "prefix": "--threads"
            }
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "arguments": [],
    "outputs": [
        {
            "id": "#report_zip",
            "description": "Zip archive of the report.",
            "outputBinding": {
                "glob": "*_fastqc.zip"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [],
    "hints": [
        {
            "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
            "class": "DockerRequirement"
        }
    ]
}