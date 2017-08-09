{
    "inputs": [
        {
            "id": "#input_fastq",
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "class": "Workflow",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                },
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                }
            ],
            "run": "fastqc-0-11-4.4.cwl",
            "id": "#FastQC",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ]
        }
    ],
    "requirements": [],
    "outputs": [
        {
            "id": "#report_zip",
            "source": [
                "#FastQC.report_zip"
            ],
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft-3"
}