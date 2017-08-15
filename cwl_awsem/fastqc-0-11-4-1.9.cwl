{
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq"
        },
        {
            "default": 1,
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads"
        }
    ],
    "outputs": [
        {
            "source": "#FastQC.report_zip",
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip"
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3",
    "steps": [
        {
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
            ],
            "run": "fastqc-0-11-4.6.cwl",
            "id": "#FastQC"
        }
    ],
    "class": "Workflow"
}