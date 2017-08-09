{
    "steps": [
        {
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
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
            ],
            "run": "fastqc-0-11-4.0.cwl"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "limits_file",
            "id": "#limits_file"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "contaminants_file",
            "id": "#contaminants_file"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "adapters_file",
            "id": "#adapters_file"
        },
        {
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "label": "input_fastq",
            "id": "#input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "label": "Threads",
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "required": false
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "source": [
                "#FastQC.report_zip"
            ],
            "label": "report_zip",
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip"
        }
    ],
    "class": "Workflow"
}