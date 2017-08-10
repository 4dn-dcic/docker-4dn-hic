{
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
    "requirements": [],
    "steps": [
        {
            "run": "fastqc-0-11-4.6.cwl",
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
            ],
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ]
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "default": 1,
            "id": "#threads",
            "type": [
                "null",
                "int"
            ]
        }
    ]
}