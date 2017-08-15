{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#report_zip",
            "source": "#FastQC.report_zip",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "Workflow",
    "steps": [
        {
            "id": "#FastQC",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "run": "fastqc-0-11-4.6.cwl",
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": "#threads"
                },
                {
                    "id": "#FastQC.outdir"
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": "#input_fastq"
                }
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "default": 1,
            "type": [
                "null",
                "int"
            ]
        }
    ]
}