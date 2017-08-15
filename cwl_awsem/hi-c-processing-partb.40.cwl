{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "steps": [
        {
            "run": "pairs2hic.15.cwl",
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
            ],
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "id": "#pairs2hic"
        },
        {
            "run": "merge-pairs.28.cwl",
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "source": "#input_pairs",
                    "id": "#merge_pairs.input_pairs"
                }
            ],
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "id": "#merge_pairs"
        },
        {
            "run": "cooler.21.cwl",
            "inputs": [
                {
                    "source": "#merge_pairs.output_pairs",
                    "id": "#cooler.pairs"
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
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "id": "#cooler"
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
            "default": 5000,
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res"
        },
        {
            "default": "14g",
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem"
        },
        {
            "default": 8,
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
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ]
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
    ]
}