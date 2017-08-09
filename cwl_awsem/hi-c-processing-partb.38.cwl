{
    "class": "Workflow",
    "steps": [
        {
            "inputs": [
                {
                    "default": "out",
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": [
                        "#input_pairs"
                    ]
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
            "run": "merge-pairs.25.cwl"
        },
        {
            "inputs": [
                {
                    "default": "out",
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "id": "#pairs2hic.min_res",
                    "source": [
                        "#min_res"
                    ]
                },
                {
                    "default": "56g",
                    "id": "#pairs2hic.maxmem"
                },
                {
                    "id": "#pairs2hic.input_pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "default": "1",
                    "id": "#pairs2hic.higlass"
                },
                {
                    "id": "#pairs2hic.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "run": "pairs2hic.15.cwl"
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
                    "default": "out",
                    "id": "#cooler.outprefix"
                },
                {
                    "id": "#cooler.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "default": 2,
                    "id": "#cooler.max_split"
                }
            ],
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "run": "cooler.19.cwl"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "chrsizes",
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
            "label": "input_pairs",
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
            "id": "#ncores",
            "required": false
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "required": false
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "output_pairs_index",
            "id": "#output_pairs_index",
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "required": false
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "output_pairs",
            "id": "#output_pairs",
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "required": false
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "out_cool",
            "id": "#out_cool",
            "source": [
                "#cooler.out_cool"
            ],
            "required": false
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "output_hic",
            "id": "#output_hic",
            "source": [
                "#pairs2hic.output_hic"
            ],
            "required": false
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": []
}