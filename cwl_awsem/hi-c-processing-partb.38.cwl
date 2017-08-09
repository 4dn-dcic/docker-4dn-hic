{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "required": false,
            "id": "#output_pairs_index",
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "label": "output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "required": false,
            "id": "#output_pairs",
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "label": "output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "required": false,
            "id": "#out_cool",
            "source": [
                "#cooler.out_cool"
            ],
            "label": "out_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "required": false,
            "id": "#output_hic",
            "source": [
                "#pairs2hic.output_hic"
            ],
            "label": "output_hic",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#chrsizes",
            "label": "chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_pairs",
            "label": "input_pairs",
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
    "steps": [
        {
            "run": "merge-pairs.25.cwl",
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
                    "id": "#merge_pairs.outprefix",
                    "default": "out"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": [
                        "#input_pairs"
                    ]
                }
            ]
        },
        {
            "run": "pairs2hic.15.cwl",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
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
            ]
        },
        {
            "run": "cooler.19.cwl",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
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
            ]
        }
    ],
    "requirements": [],
    "class": "Workflow"
}