{
    "class": "Workflow",
    "inputs": [
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "label": "chrsizes"
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "label": "input_pairs"
        },
        {
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "required": false,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "required": false,
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "cwlVersion": "draft3",
    "steps": [
        {
            "run": "merge-pairs.25.cwl",
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix",
                    "default": "out"
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
            ]
        },
        {
            "run": "pairs2hic.15.cwl",
            "inputs": [
                {
                    "id": "#pairs2hic.output_prefix",
                    "default": "out"
                },
                {
                    "id": "#pairs2hic.min_res",
                    "source": [
                        "#min_res"
                    ]
                },
                {
                    "id": "#pairs2hic.maxmem",
                    "default": "56g"
                },
                {
                    "id": "#pairs2hic.input_pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "id": "#pairs2hic.higlass",
                    "default": "1"
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
            ]
        },
        {
            "run": "cooler.19.cwl",
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
                    "id": "#cooler.outprefix",
                    "default": "out"
                },
                {
                    "id": "#cooler.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "id": "#cooler.max_split",
                    "default": 2
                }
            ],
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ]
        }
    ],
    "outputs": [
        {
            "required": false,
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "label": "output_pairs_index",
            "source": [
                "#merge_pairs.output_pairs_index"
            ]
        },
        {
            "required": false,
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ],
            "label": "output_pairs",
            "source": [
                "#merge_pairs.output_pairs"
            ]
        },
        {
            "required": false,
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ],
            "label": "out_cool",
            "source": [
                "#cooler.out_cool"
            ]
        },
        {
            "required": false,
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ],
            "label": "output_hic",
            "source": [
                "#pairs2hic.output_hic"
            ]
        }
    ],
    "requirements": []
}