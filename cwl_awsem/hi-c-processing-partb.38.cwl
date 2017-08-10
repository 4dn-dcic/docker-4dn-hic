{
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
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "source": "#input_pairs",
                    "id": "#merge_pairs.input_pairs"
                }
            ],
            "id": "#merge_pairs"
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
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "source": "#min_res",
                    "id": "#pairs2hic.min_res"
                },
                {
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
            ],
            "id": "#pairs2hic"
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
                    "source": "#merge_pairs.output_pairs",
                    "id": "#cooler.pairs"
                },
                {
                    "source": "#merge_pairs.output_pairs_index",
                    "id": "#cooler.pairs_index"
                },
                {
                    "source": "#chrsizes",
                    "id": "#cooler.chrsizes"
                },
                {
                    "source": "#binsize",
                    "id": "#cooler.binsize"
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
                }
            ],
            "id": "#cooler"
        }
    ],
    "outputs": [
        {
            "source": "#merge_pairs.output_pairs_index",
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": "#merge_pairs.output_pairs",
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": "#cooler.out_cool",
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": "#pairs2hic.output_hic",
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
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "id": "#min_res",
            "default": "5000",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#ncores",
            "default": "8",
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
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "requirements": []
}