{
    "class": "Workflow",
    "steps": [
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
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "run": "merge-pairs.28.cwl",
            "id": "#merge_pairs"
        },
        {
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
            "run": "cooler.22.cwl",
            "id": "#cooler"
        },
        {
            "inputs": [
                {
                    "source": "#merge_pairs.output_pairs",
                    "id": "#pairs2hic.input_pairs"
                },
                {
                    "source": "#chrsizes",
                    "id": "#pairs2hic.chromsizes_file"
                },
                {
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "source": "#min_res",
                    "id": "#pairs2hic.min_res"
                },
                {
                    "id": "#pairs2hic.higlass"
                },
                {
                    "source": "#maxmem",
                    "id": "#pairs2hic.maxmem"
                }
            ],
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "run": "pairs2hic.16.cwl",
            "id": "#pairs2hic"
        }
    ],
    "cwlVersion": "draft-3",
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
                    "items": "File",
                    "type": "array"
                }
            ],
            "id": "#input_pairs"
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
        }
    ],
    "outputs": [
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
    ]
}