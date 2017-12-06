{
    "outputs": [
        {
            "type": [
                "File"
            ],
            "source": "#align.out_bam",
            "id": "#bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#filtersort.out_filtered_sorted_bam",
            "id": "#filtered_sorted_bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#dedup.out_deduped_bam",
            "id": "#filtered_sorted_deduped_bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#count.out_count_bg",
            "id": "#count_bg"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#fastq"
        },
        {
            "type": [
                "File"
            ],
            "id": "#bwaIndex"
        },
        {
            "type": [
                "File"
            ],
            "id": "#chromsizes"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#nthreads",
            "default": "4"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#memperthread",
            "default": "5G"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#winsize",
            "default": 5000
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#clip.out_clipped_fastq"
                }
            ],
            "run": "clip.cwl",
            "inputs": [
                {
                    "source": "#fastq",
                    "id": "#clip.input_fastq"
                }
            ],
            "id": "#clip"
        },
        {
            "outputs": [
                {
                    "id": "#align.out_bam"
                }
            ],
            "run": "align.cwl",
            "inputs": [
                {
                    "source": "#clip.out_clipped_fastq",
                    "id": "#align.fastq1"
                },
                {
                    "source": "#bwaIndex",
                    "id": "#align.bwa_index"
                }
                {
                    "source": "#nthreads",
                    "id": "#align.nThreads"
                }
            ],
            "id": "#align"
        },
        {
            "outputs": [
                {
                    "id": "#filtersort.out_filtered_sorted_bam"
                }
            ],
            "run": "filtersort.cwl",
            "inputs": [
                {
                    "source": "#align.out_bam",
                    "id": "#filtersort.input_bam"
                },
                {
                    "source": "#nthreads",
                    "id": "#filtersort.nthreads"
                },
                {
                    "source": "#memperthread",
                    "id": "#filtersort.memperthread"
                }
            ],
            "id": "#filtersort"
        },
        {
            "outputs": [
                {
                    "id": "#dedup.out_deduped_bam"
                }
            ],
            "run": "dedup.cwl",
            "inputs": [
                {
                    "source": "#filtersort.out_filtered_sorted_bam",
                    "id": "#dedup.input_bam"
                }
            ],
            "id": "#dedup"
        },
        {
            "outputs": [
                {
                    "id": "#count.out_count_bg"
                }
            ],
            "run": "count.cwl",
            "inputs": [
                {
                    "source": "#dedup.out_deduped_bam",
                    "id": "#count.input_bam"
                },
                {
                    "source": "#chromsizes",
                    "id": "#count.chrsizes"
                },
                {
                    "source": "#winsize",
                    "id": "#count.winsize"
                }
            ],
            "id": "#count"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
