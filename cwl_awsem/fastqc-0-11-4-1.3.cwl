{
    "steps": [
        {
            "id": "#FastQC",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "run": "fastqc-0-11-4.0.cwl",
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                },
                {
                    "id": "#FastQC.quiet"
                },
                {
                    "id": "#FastQC.nogroup"
                },
                {
                    "id": "#FastQC.nano"
                },
                {
                    "id": "#FastQC.limits_file",
                    "source": [
                        "#limits_file"
                    ]
                },
                {
                    "id": "#FastQC.kmers"
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                },
                {
                    "id": "#FastQC.format"
                },
                {
                    "id": "#FastQC.contaminants_file",
                    "source": [
                        "#contaminants_file"
                    ]
                },
                {
                    "id": "#FastQC.casava"
                },
                {
                    "id": "#FastQC.adapters_file",
                    "source": [
                        "#adapters_file"
                    ]
                }
            ],
            "scatter": "#FastQC.input_fastq"
        }
    ],
    "inputs": [
        {
            "id": "#limits_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#contaminants_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#adapters_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_fastq",
            "type": [
                {
                    "type": "array",
                    "items": "File"
                }
            ]
        },
        {
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#FastQC.report_zip"
            ]
        }
    ],
    "class": "Workflow"
}