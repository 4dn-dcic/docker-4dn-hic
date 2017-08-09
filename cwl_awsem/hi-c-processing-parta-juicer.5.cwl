{
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
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "requirements": [],
    "outputs": [
        {
            "id": "#out_pairs",
            "label": "out_pairs",
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#juicer2pairs.out_pairs"
            ]
        },
        {
            "id": "#out_pairs_index",
            "label": "out_pairs_index",
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#juicer2pairs.out_pairs_px"
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
    ]
}