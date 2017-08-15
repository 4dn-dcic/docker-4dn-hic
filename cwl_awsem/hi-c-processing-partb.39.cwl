{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#output_pairs_index",
            "source": "#merge_pairs.output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_pairs",
            "source": "#merge_pairs.output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_cool",
            "source": "#cooler.out_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_hic",
            "source": "#pairs2hic.output_hic",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [],
    "class": "Workflow",
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
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "id": "#min_res",
            "default": 5000,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#ncores",
            "default": 8,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#maxmem",
            "default": "14g",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "steps": [
        {
            "run": "merge-pairs.25.cwl",
            "id": "#merge_pairs",
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": "#input_pairs"
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
            "id": "#pairs2hic",
            "inputs": [
                {
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "id": "#pairs2hic.min_res",
                    "source": "#min_res"
                },
                {
                    "id": "#pairs2hic.maxmem",
                    "source": "#maxmem"
                },
                {
                    "id": "#pairs2hic.input_pairs",
                    "source": "#merge_pairs.output_pairs"
                },
                {
                    "id": "#pairs2hic.higlass"
                },
                {
                    "id": "#pairs2hic.chromsizes_file",
                    "source": "#chrsizes"
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
            "id": "#cooler",
            "inputs": [
                {
                    "id": "#cooler.pairs_index",
                    "source": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#cooler.pairs",
                    "source": "#merge_pairs.output_pairs"
                },
                {
                    "id": "#cooler.outprefix"
                },
                {
                    "id": "#cooler.ncores",
                    "source": "#ncores"
                },
                {
                    "id": "#cooler.max_split"
                },
                {
                    "id": "#cooler.chrsizes",
                    "source": "#chrsizes"
                },
                {
                    "id": "#cooler.binsize",
                    "source": "#binsize"
                }
            ],
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ]
        }
    ]
}