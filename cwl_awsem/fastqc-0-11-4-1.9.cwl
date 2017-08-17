{
    "class": "Workflow",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "default": 1,
            "id": "#threads"
        }
    ],
    "steps": [
        {
            "run": "fastqc-0-11-4.6.cwl",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "id": "#FastQC",
            "inputs": [
                {
                    "source": "#threads",
                    "id": "#FastQC.threads"
                },
                {
                    "id": "#FastQC.outdir"
                },
                {
                    "source": "#input_fastq",
                    "id": "#FastQC.input_fastq"
                }
            ]
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#FastQC.report_zip",
            "id": "#report_zip"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}