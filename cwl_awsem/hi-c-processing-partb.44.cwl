{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
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
            "run": "merge-pairs.30.cwl",
            "id": "#merge_pairs",
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#cooler.pairs",
                    "source": "#merge_pairs.output_pairs"
                },
                {
                    "id": "#cooler.chrsizes",
                    "source": "#chrsizes"
                },
                {
                    "id": "#cooler.binsize",
                    "source": "#binsize"
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
                }
            ],
            "run": "cooler.24.cwl",
            "id": "#cooler",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#pairs2hic.input_pairs",
                    "source": "#merge_pairs.output_pairs"
                },
                {
                    "id": "#pairs2hic.chromsizes_file",
                    "source": "#chrsizes"
                },
                {
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "id": "#pairs2hic.min_res",
                    "source": "#min_res"
                },
                {
                    "id": "#pairs2hic.higlass"
                },
                {
                    "id": "#pairs2hic.maxmem",
                    "source": "#maxmem"
                }
            ],
            "run": "pairs2hic.18.cwl",
            "id": "#pairs2hic",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
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
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "source": "#merge_pairs.output_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool",
            "source": "#cooler.out_cool"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic",
            "source": "#pairs2hic.output_hic"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "Workflow"
}