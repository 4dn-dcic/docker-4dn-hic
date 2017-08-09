{
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
    "inputs": [
        {
            "id": "#fastq1",
            "type": [
                "File"
            ]
        },
        {
            "id": "#fastq2",
            "type": [
                "File"
            ]
        },
        {
            "id": "#bwa_index",
            "type": [
                "File"
            ]
        },
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#reference_fasta",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "class": "Workflow",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "id": "#juicer",
            "run": "juicer.6.cwl",
            "inputs": [
                {
                    "id": "#juicer.restriction_file",
                    "source": [
                        "#restriction_file"
                    ]
                },
                {
                    "id": "#juicer.reference_fasta",
                    "source": [
                        "#reference_fasta"
                    ]
                },
                {
                    "id": "#juicer.outdir"
                },
                {
                    "id": "#juicer.input_fastq2",
                    "source": [
                        "#fastq2"
                    ]
                },
                {
                    "id": "#juicer.input_fastq1",
                    "source": [
                        "#fastq1"
                    ]
                },
                {
                    "id": "#juicer.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                },
                {
                    "id": "#juicer.bwaIndex",
                    "source": [
                        "#bwa_index"
                    ]
                }
            ]
        },
        {
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
            "id": "#juicer2pairs",
            "run": "juicer2pairs.1.cwl",
            "inputs": [
                {
                    "id": "#juicer2pairs.outprefix"
                },
                {
                    "id": "#juicer2pairs.nsplit",
                    "source": [
                        "#nsplit"
                    ]
                },
                {
                    "id": "#juicer2pairs.input_merged_nodups",
                    "source": [
                        "#juicer.merged_nodups"
                    ]
                },
                {
                    "id": "#juicer2pairs.chromsize",
                    "source": [
                        "#chrsizes"
                    ]
                }
            ]
        }
    ],
    "cwlVersion": "draft-3"
}