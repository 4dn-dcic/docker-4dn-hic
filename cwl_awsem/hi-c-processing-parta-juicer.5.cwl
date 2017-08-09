{
    "inputs": [
        {
            "id": "#fastq1",
            "type": [
                "File"
            ],
            "label": "fastq1"
        },
        {
            "id": "#fastq2",
            "type": [
                "File"
            ],
            "label": "fastq2"
        },
        {
            "id": "#bwa_index",
            "type": [
                "File"
            ],
            "label": "bwa_index"
        },
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "label": "chrsizes"
        },
        {
            "id": "#reference_fasta",
            "type": [
                "null",
                "File"
            ],
            "label": "reference_fasta"
        },
        {
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ],
            "label": "restriction_file"
        },
        {
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ],
            "required": false
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "outputs": [
        {
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs",
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "required": false
        },
        {
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs_index",
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "required": false
        }
    ],
    "cwlVersion": "draft3",
    "steps": [
        {
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
                    "id": "#juicer.outdir",
                    "default": "."
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
            ],
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "run": "juicer.6.cwl"
        },
        {
            "inputs": [
                {
                    "id": "#juicer2pairs.outprefix",
                    "default": "out"
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
            ],
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
            "run": "juicer2pairs.1.cwl"
        }
    ]
}