{
    "cwlVersion": "draft3",
    "outputs": [
        {
            "label": "out_pairs",
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs",
            "required": false,
            "source": [
                "#juicer2pairs.out_pairs"
            ]
        },
        {
            "label": "out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index",
            "required": false,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ]
        }
    ],
    "requirements": [],
    "inputs": [
        {
            "label": "fastq1",
            "type": [
                "File"
            ],
            "id": "#fastq1"
        },
        {
            "label": "fastq2",
            "type": [
                "File"
            ],
            "id": "#fastq2"
        },
        {
            "label": "bwa_index",
            "type": [
                "File"
            ],
            "id": "#bwa_index"
        },
        {
            "label": "chrsizes",
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "label": "reference_fasta",
            "type": [
                "null",
                "File"
            ],
            "id": "#reference_fasta"
        },
        {
            "label": "restriction_file",
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
            "id": "#nsplit",
            "required": false
        }
    ],
    "class": "Workflow"
}