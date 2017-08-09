{
    "class": "Workflow",
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
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index",
            "source": [
                "#merge_pairs.output_pairs_index"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "source": [
                "#merge_pairs.output_pairs"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool",
            "source": [
                "#cooler.out_cool"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic",
            "source": [
                "#pairs2hic.output_hic"
            ]
        }
    ],
    "steps": [
        {
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": [
                        "#input_pairs"
                    ]
                }
            ],
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
                    "id": "#pairs2hic.min_res",
                    "source": [
                        "#min_res"
                    ]
                },
                {
                    "id": "#pairs2hic.maxmem"
                },
                {
                    "id": "#pairs2hic.input_pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "id": "#pairs2hic.higlass"
                },
                {
                    "id": "#pairs2hic.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                }
            ],
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
                    "id": "#cooler.pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "id": "#cooler.pairs_index",
                    "source": [
                        "#merge_pairs.output_pairs_index"
                    ]
                },
                {
                    "id": "#cooler.chrsizes",
                    "source": [
                        "#chrsizes"
                    ]
                },
                {
                    "id": "#cooler.binsize",
                    "source": [
                        "#binsize"
                    ]
                },
                {
                    "id": "#cooler.outprefix"
                },
                {
                    "id": "#cooler.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "id": "#cooler.max_split"
                }
            ],
            "run": "cooler.19.cwl",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ]
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3"
}