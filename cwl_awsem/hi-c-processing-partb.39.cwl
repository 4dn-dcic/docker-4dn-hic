{
    "cwlVersion": "draft-3",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": "#input_pairs"
                }
            ],
            "id": "#merge_pairs",
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
            "id": "#pairs2hic",
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
            "id": "#cooler",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "run": "cooler.19.cwl"
        }
    ],
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
            "type": [
                "null",
                "int"
            ],
            "default": 5000
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
            "type": [
                "null",
                "int"
            ],
            "default": 8
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "default": "14g"
        }
    ],
    "outputs": [
        {
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "source": "#merge_pairs.output_pairs_index"
        },
        {
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ],
            "source": "#merge_pairs.output_pairs"
        },
        {
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ],
            "source": "#cooler.out_cool"
        },
        {
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ],
            "source": "#pairs2hic.output_hic"
        }
    ],
    "requirements": {
        "class": "InlineJavascriptRequirement"
    }
}