{
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
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "default": 1
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip",
            "source": "#FastQC.report_zip"
        }
    ],
    "class": "Workflow",
    "steps": [
        {
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
            ],
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "id": "#FastQC"
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3"
}