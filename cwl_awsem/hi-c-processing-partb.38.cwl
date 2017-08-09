{
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
                    "items": "File",
                    "type": "array"
                }
            ],
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res",
            "default": "5000"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
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
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "run": "merge-pairs.25.cwl",
            "id": "#merge_pairs"
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
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "run": "pairs2hic.15.cwl",
            "id": "#pairs2hic"
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
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "run": "cooler.19.cwl",
            "id": "#cooler"
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "requirements": []
}