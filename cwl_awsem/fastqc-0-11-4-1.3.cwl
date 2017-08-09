{
    "steps": [
        {
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "run": "fastqc-0-11-4.0.cwl",
            "inputs": [
                {
                    "source": [
                        "#threads"
                    ],
                    "id": "#FastQC.threads"
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
                    "source": [
                        "#limits_file"
                    ],
                    "id": "#FastQC.limits_file"
                },
                {
                    "id": "#FastQC.kmers"
                },
                {
                    "source": [
                        "#input_fastq"
                    ],
                    "id": "#FastQC.input_fastq"
                },
                {
                    "id": "#FastQC.format"
                },
                {
                    "source": [
                        "#contaminants_file"
                    ],
                    "id": "#FastQC.contaminants_file"
                },
                {
                    "id": "#FastQC.casava"
                },
                {
                    "source": [
                        "#adapters_file"
                    ],
                    "id": "#FastQC.adapters_file"
                }
            ]
        }
    ],
    "cwlVersion": "draft3",
    "outputs": [
        {
            "source": [
                "#FastQC.report_zip"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip",
            "label": "report_zip",
            "required": false
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#limits_file",
            "label": "limits_file"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#contaminants_file",
            "label": "contaminants_file"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#adapters_file",
            "label": "adapters_file"
        },
        {
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "id": "#input_fastq",
            "label": "input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "label": "Threads",
            "required": false
        }
    ]
}