{
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#fastq1"
        },
        {
            "type": [
                "File"
            ],
            "id": "#fastq2"
        },
        {
            "type": [
                "File"
            ],
            "id": "#bwa_index"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#reference_fasta"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#restriction_file"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 100,
            "id": "#nsplit"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#max_remove_mapq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "default": 8
        }
    ],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs",
            "source": "#juicer2pairs.out_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index",
            "source": "#juicer2pairs.out_pairs_px"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#merged_nodups",
            "source": "#juicer.merged_nodups"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "Workflow",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#juicer2pairs.outprefix"
                },
                {
                    "id": "#juicer2pairs.nsplit",
                    "source": "#nsplit"
                },
                {
                    "id": "#juicer2pairs.max_remove_mapq",
                    "source": "#max_remove_mapq"
                },
                {
                    "id": "#juicer2pairs.input_merged_nodups",
                    "source": "#juicer.merged_nodups"
                },
                {
                    "id": "#juicer2pairs.chromsize",
                    "source": "#chrsizes"
                }
            ],
            "run": "juicer2pairs.8.cwl",
            "id": "#juicer2pairs",
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#juicer.restriction_file",
                    "source": "#restriction_file"
                },
                {
                    "id": "#juicer.reference_fasta",
                    "source": "#reference_fasta"
                },
                {
                    "id": "#juicer.outdir"
                },
                {
                    "id": "#juicer.ncores",
                    "source": "#ncores"
                },
                {
                    "id": "#juicer.input_fastq2",
                    "source": "#fastq2"
                },
                {
                    "id": "#juicer.input_fastq1",
                    "source": "#fastq1"
                },
                {
                    "id": "#juicer.chromsizes_file",
                    "source": "#chrsizes"
                },
                {
                    "id": "#juicer.bwaIndex",
                    "source": "#bwa_index"
                }
            ],
            "run": "juicer.19.cwl",
            "id": "#juicer",
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ]
        }
    ]
}