{
    "requirements": [],
    "steps": [
        {
            "id": "#merge_pairs",
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
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
            "run": "merge-pairs.25.cwl"
        },
        {
            "id": "#pairs2hic",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
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
            "run": "pairs2hic.15.cwl"
        },
        {
            "id": "#cooler",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
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
            "run": "cooler.19.cwl"
        }
    ],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": [
                "#cooler.out_cool"
            ],
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": [
                "#pairs2hic.output_hic"
            ],
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ]
        },
        {
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "default": "5000"
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "default": "8"
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "class": "Workflow"
}