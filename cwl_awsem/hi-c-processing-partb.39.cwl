{
    "cwlVersion": "draft-3",
    "class": "Workflow",
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
            "id": "#merge_pairs",
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "source": "#input_pairs",
                    "id": "#merge_pairs.input_pairs"
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
            "id": "#pairs2hic",
            "inputs": [
                {
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "source": "#min_res",
                    "id": "#pairs2hic.min_res"
                },
                {
                    "source": "#maxmem",
                    "id": "#pairs2hic.maxmem"
                },
                {
                    "source": "#merge_pairs.output_pairs",
                    "id": "#pairs2hic.input_pairs"
                },
                {
                    "id": "#pairs2hic.higlass"
                },
                {
                    "source": "#chrsizes",
                    "id": "#pairs2hic.chromsizes_file"
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
            "id": "#cooler",
            "inputs": [
                {
                    "source": "#merge_pairs.output_pairs_index",
                    "id": "#cooler.pairs_index"
                },
                {
                    "source": "#merge_pairs.output_pairs",
                    "id": "#cooler.pairs"
                },
                {
                    "id": "#cooler.outprefix"
                },
                {
                    "source": "#ncores",
                    "id": "#cooler.ncores"
                },
                {
                    "id": "#cooler.max_split"
                },
                {
                    "source": "#chrsizes",
                    "id": "#cooler.chrsizes"
                },
                {
                    "source": "#binsize",
                    "id": "#cooler.binsize"
                }
            ]
        }
    ],
    "outputs": [
        {
            "source": "#merge_pairs.output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index"
        },
        {
            "source": "#merge_pairs.output_pairs",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        },
        {
            "source": "#cooler.out_cool",
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool"
        },
        {
            "source": "#pairs2hic.output_hic",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic"
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
            "id": "#min_res",
            "default": 5000
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "default": 8
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "default": "14g"
        }
    ],
    "requirements": []
}