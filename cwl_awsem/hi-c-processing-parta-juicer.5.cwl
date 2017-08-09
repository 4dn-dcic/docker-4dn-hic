{
    "requirements": [],
    "class": "Workflow",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "run": "juicer.6.cwl",
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
                    "default": ".",
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
            "run": "juicer2pairs.1.cwl",
            "inputs": [
                {
                    "default": "out",
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
            ]
        }
    ],
    "outputs": [
        {
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "id": "#out_pairs",
            "label": "out_pairs",
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "id": "#out_pairs_index",
            "label": "out_pairs_index",
            "required": false,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#fastq1",
            "label": "fastq1",
            "type": [
                "File"
            ]
        },
        {
            "id": "#fastq2",
            "label": "fastq2",
            "type": [
                "File"
            ]
        },
        {
            "id": "#bwa_index",
            "label": "bwa_index",
            "type": [
                "File"
            ]
        },
        {
            "id": "#chrsizes",
            "label": "chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#reference_fasta",
            "label": "reference_fasta",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#restriction_file",
            "label": "restriction_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#nsplit",
            "required": false,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "cwlVersion": "draft-3"
}