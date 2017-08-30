{
    "class": "Workflow",
    "inputs": [
        {
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "default": 1,
            "type": [
                "null",
                "int"
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
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "source": "#FastQC.report_zip"
        }
    ],
    "cwlVersion": "draft-3",
    "steps": [
        {
            "id": "#FastQC",
            "run": "fastqc-0-11-4.6.cwl",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
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
    ]
}