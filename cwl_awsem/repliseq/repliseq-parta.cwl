{
    "4dn_meta": {
        "data_types": [ "Repli-seq" ],
        "category": "clip + align + filter + sort + dedup + count",
        "workflow_type": "Repli-seq data processing",
        "description": "Repli-seq data processing pipeline"
    },
    "outputs": [
        {
            "type": [
                "File"
            ],
            "source": "#align.out_bam",
            "id": "#bam",
            "4dn_format": "bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#filtersort.out_filtered_sorted_bam",
            "id": "#filtered_sorted_bam",
            "4dn_format": "bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#dedup.out_deduped_bam",
            "id": "#filtered_sorted_deduped_bam",
            "4dn_format": "bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#count.out_count_bg",
            "id": "#count_bg",
            "4dn_format": "bg"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#fastq",
            "4dn_format": "fastq"
        },
        {
            "type": [
                "File"
            ],
            "id": "#bwaIndex",
            "4dn_format": "bwaIndex"
        },
        {
            "type": [
                "File"
            ],
            "id": "#chromsizes",
            "4dn_format": "chromsizes"
        },
        {
            "type": [
                
                "int"
            ],
            "id": "#nthreads",
            "default": 4
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#memperthread",
            "default": "2G"
        },
        {
            "type": [
                
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
            "id": "#clip",
            "4dn_step_meta": {
                "software": [ "cutadapt" ],
                "description": "Adapter removal according to the Repli-seq pipeline",
                "analysis_step_types": [ "adapter removal" ]
            }
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
                },
                {
                    "source": "#nthreads",
                    "id": "#align.nThreads"
                }
            ],
            "id": "#align",
            "4dn_step_meta": {
                "software": [ "bwa" ],
                "description": "Alignment according to the Repli-seq pipeline",
                "analysis_step_types": [ "alignment" ]
            }
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
            "id": "#filtersort",
            "4dn_step_meta": {
                "software": [ "samtools" ],
                "description": "Filtering and sorting according to the Repli-seq pipeline",
                "analysis_step_types": [ "filtering", "sorting" ]
            }
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
            "id": "#dedup",
            "4dn_step_meta": {
                "software": [ "samtools" ],
                "description": "PCR Duplicate removal according to the Repli-seq pipeline",
                "analysis_step_types": [ "duplicate removal" ]
            }
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
            "id": "#count",
            "4dn_step_meta": {
                "software": [ "bedtools" ],
                "description": "Read aggregation according to the Repli-seq pipeline",
                "analysis_step_types": [ "aggregation" ]
            }
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
