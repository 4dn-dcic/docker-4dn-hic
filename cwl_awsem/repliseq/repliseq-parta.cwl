{
    "fdn_meta": {
        "title": "Repli-seq data processing pipeline for alignment, filtering and counting",
        "name": "repliseq-parta",
        "data_types": [ "Repli-seq" ],
        "category": "align + filter + count",
        "workflow_type": "Repli-seq data processing",
        "description": "This is a subworkflow of the Repli-seq data processing pipeline. It takes a raw fastq file, aligns to the reference genome, performs filtering and reports read counts in a bedgraph (bg) format."
    },
    "outputs": [
        {
            "type": [
                "File"
            ],
            "source": "#align.out_bam",
            "id": "#bam",
            "fdn_format": "bam",
            "fdn_output_type": "processed"
        },
        {
            "type": [
                "File"
            ],
            "source": "#filtersort.out_filtered_sorted_bam",
            "id": "#filtered_sorted_bam",
            "fdn_output_type": "processed",
            "fdn_format": "bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#dedup.out_deduped_bam",
            "id": "#filtered_sorted_deduped_bam",
            "fdn_output_type": "processed",
            "fdn_format": "bam"
        },
        {
            "type": [
                "File"
            ],
            "source": "#dedup.out_qc_report",
            "id": "#dedup_qc_report",
            "fdn_output_type": "QC"
        },
        {
            "type": [
                "File"
            ],
            "source": "#count.out_count_bg",
            "id": "#count_bg",
            "fdn_output_type": "processed",
            "fdn_format": "bg"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#fastq",
            "fdn_format": "fastq"
        },
        {
            "type": [
                "File"
            ],
            "id": "#bwaIndex",
            "fdn_format": "bwaIndex"
        },
        {
            "type": [
                "File"
            ],
            "id": "#chromsizes",
            "fdn_format": "chromsizes"
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
                    "id": "#clip.out_clipped_fastq",
                    "fdn_format": "fastq"
                }
            ],
            "run": "clip.cwl",
            "inputs": [
                {
                    "source": "#fastq",
                    "id": "#clip.input_fastq",
                    "fdn_format": "fastq"
                }
            ],
            "id": "#clip",
            "fdn_step_meta": {
                "software_used": [ "cutadapt_1.14", "repli-seq-pipeline_f2eb460" ],
                "description": "Adapter removal according to the Repli-seq pipeline",
                "analysis_step_types": [ "adapter removal" ]
            }
        },
        {
            "outputs": [
                {
                    "fdn_format": "bam",
                    "id": "#align.out_bam"
                }
            ],
            "run": "align.cwl",
            "inputs": [
                {
                    "source": "#clip.out_clipped_fastq",
                    "fdn_format": "fastq",
                    "id": "#align.fastq1"
                },
                {
                    "source": "#bwaIndex",
                    "fdn_format": "bwaIndex",
                    "id": "#align.bwa_index"
                },
                {
                    "source": "#nthreads",
                    "id": "#align.nThreads"
                }
            ],
            "id": "#align",
            "fdn_step_meta": {
                "software_used": [ "bwa_0.7.15", "repli-seq-pipeline_f2eb460" ],
                "description": "Alignment according to the Repli-seq pipeline",
                "analysis_step_types": [ "alignment" ]
            }
        },
        {
            "outputs": [
                {
                    "fdn_format": "bam",
                    "id": "#filtersort.out_filtered_sorted_bam"
                }
            ],
            "run": "filtersort.cwl",
            "inputs": [
                {
                    "source": "#align.out_bam",
                    "fdn_format": "bam",
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
            "fdn_step_meta": {
                "software_used": [ "samtools_1.4", "repli-seq-pipeline_f2eb460" ],
                "description": "Filtering and sorting according to the Repli-seq pipeline",
                "analysis_step_types": [ "filtering", "sorting" ]
            }
        },
        {
            "outputs": [
                {
                    "fdn_format": "bam",
                    "id": "#dedup.out_deduped_bam"
                }
            ],
            "run": "dedup.cwl",
            "inputs": [
                {
                    "source": "#filtersort.out_filtered_sorted_bam",
                    "fdn_format": "bam",
                    "id": "#dedup.input_bam"
                }
            ],
            "id": "#dedup",
            "fdn_step_meta": {
                "software_used": [ "samtools", "repli-seq-pipeline_f2eb460" ],
                "description": "PCR Duplicate removal according to the Repli-seq pipeline",
                "analysis_step_types": [ "duplicate removal" ]
            }
        },
        {
            "outputs": [
                {
                    "fdn_format": "bam",
                    "id": "#count.out_count_bg"
                }
            ],
            "run": "count.cwl",
            "inputs": [
                {
                    "source": "#dedup.out_deduped_bam",
                    "fdn_format": "bam",
                    "id": "#count.input_bam"
                },
                {
                    "source": "#chromsizes",
                    "fdn_format": "chromsize",
                    "id": "#count.chrsizes"
                },
                {
                    "source": "#winsize",
                    "id": "#count.winsize"
                }
            ],
            "id": "#count",
            "fdn_step_meta": {
                "software_used": [ "bedtools_2.26.0", "repli-seq-pipeline_f2eb460" ],
                "description": "Read aggregation according to the Repli-seq pipeline",
                "analysis_step_types": [ "binning", "aggregation" ]
            }
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
