{
    "class": "Workflow",
    "requirements": [],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "source": "#FastQC.report_zip",
            "id": "#report_zip",
            "type": [
                "null",
                "File"
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
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "steps": [
        {
            "run": "fastqc-0-11-4.4.cwl",
            "inputs": [
                {
                    "source": "#threads",
                    "id": "#FastQC.threads"
                },
                {
                    "source": "#input_fastq",
                    "id": "#FastQC.input_fastq"
                }
            ],
            "id": "#FastQC",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ]
        }
    ]
}