{
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "source": [
                        "#input_pairs"
                    ],
                    "id": "#merge_pairs.input_pairs"
                }
            ],
            "id": "#merge_pairs",
            "run": "merge-pairs.25.cwl",
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "source": [
                        "#min_res"
                    ],
                    "id": "#pairs2hic.min_res"
                },
                {
                    "id": "#pairs2hic.maxmem"
                },
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#pairs2hic.input_pairs"
                },
                {
                    "id": "#pairs2hic.higlass"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#pairs2hic.chromsizes_file"
                }
            ],
            "id": "#pairs2hic",
            "run": "pairs2hic.15.cwl",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ]
        },
        {
            "inputs": [
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#cooler.pairs"
                },
                {
                    "source": [
                        "#merge_pairs.output_pairs_index"
                    ],
                    "id": "#cooler.pairs_index"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#cooler.chrsizes"
                },
                {
                    "source": [
                        "#binsize"
                    ],
                    "id": "#cooler.binsize"
                },
                {
                    "id": "#cooler.outprefix"
                },
                {
                    "source": [
                        "#ncores"
                    ],
                    "id": "#cooler.ncores"
                },
                {
                    "id": "#cooler.max_split"
                }
            ],
            "id": "#cooler",
            "run": "cooler.19.cwl",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ]
        }
    ],
    "inputs": [
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
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
        }
    ],
    "requirements": [],
    "outputs": [
        {
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index"
        },
        {
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        },
        {
            "source": [
                "#cooler.out_cool"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool"
        },
        {
            "source": [
                "#pairs2hic.output_hic"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic"
        }
    ]
}