{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
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
            "default": 5000,
            "id": "#min_res"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "default": "14g",
            "id": "#maxmem"
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
            "default": 8,
            "id": "#ncores"
        }
    ],
    "class": "Workflow",
    "steps": [
        {
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
            "id": "#pairs2hic",
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
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "source": "#input_pairs",
                    "id": "#merge_pairs.input_pairs"
                }
            ],
            "id": "#merge_pairs",
            "run": "merge-pairs.28.cwl",
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ]
        },
        {
            "inputs": [
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
            ],
            "id": "#cooler",
            "run": "cooler.21.cwl",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ]
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#merge_pairs.output_pairs",
            "id": "#output_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#cooler.out_cool",
            "id": "#out_cool"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#pairs2hic.output_hic",
            "id": "#output_hic"
        }
    ],
    "cwlVersion": "draft-3"
}