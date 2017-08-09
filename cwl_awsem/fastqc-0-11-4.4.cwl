{
    "baseCommand": [
        "fastqc"
    ],
    "inputs": [
        {
            "description": "Input file.",
            "id": "#input_fastq",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "itemSeparator": null
            },
            "type": [
                "File"
            ]
        },
        {
            "default": "1",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "prefix": "--threads"
            },
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4"
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
    "requirements": []
}