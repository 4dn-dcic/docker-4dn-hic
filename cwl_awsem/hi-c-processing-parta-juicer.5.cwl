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
            "id": "#nsplit"
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "requirements": [],
    "outputs": [
        {
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs"
        },
        {
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index"
        }
    ],
    "steps": [
        {
            "inputs": [
                {
                    "source": [
                        "#restriction_file"
                    ],
                    "id": "#juicer.restriction_file"
                },
                {
                    "source": [
                        "#reference_fasta"
                    ],
                    "id": "#juicer.reference_fasta"
                },
                {
                    "id": "#juicer.outdir"
                },
                {
                    "source": [
                        "#fastq2"
                    ],
                    "id": "#juicer.input_fastq2"
                },
                {
                    "source": [
                        "#fastq1"
                    ],
                    "id": "#juicer.input_fastq1"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#juicer.chromsizes_file"
                },
                {
                    "source": [
                        "#bwa_index"
                    ],
                    "id": "#juicer.bwaIndex"
                }
            ],
            "run": "juicer.6.cwl",
            "id": "#juicer",
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#juicer2pairs.outprefix"
                },
                {
                    "source": [
                        "#nsplit"
                    ],
                    "id": "#juicer2pairs.nsplit"
                },
                {
                    "source": [
                        "#juicer.merged_nodups"
                    ],
                    "id": "#juicer2pairs.input_merged_nodups"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#juicer2pairs.chromsize"
                }
            ],
            "run": "juicer2pairs.1.cwl",
            "id": "#juicer2pairs",
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ]
        }
    ]
}