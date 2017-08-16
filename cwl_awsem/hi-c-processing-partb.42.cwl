{
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "steps": [
        {
            "run": "merge-pairs.28.cwl",
            "id": "#merge_pairs",
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": "#input_pairs"
                }
            ]
        },
        {
            "run": "cooler.22.cwl",
            "id": "#cooler",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
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
            ]
        },
        {
            "run": "pairs2hic.16.cwl",
            "id": "#pairs2hic",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
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
            ]
        }
    ],
    "outputs": [
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
            "id": "#ncores",
            "default": 8,
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
            "id": "#min_res",
            "default": 5000,
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}