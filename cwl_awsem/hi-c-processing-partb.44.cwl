{
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
    "cwlVersion": "draft-3",
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
            "run": "merge-pairs.30.cwl",
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
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
            "run": "cooler.24.cwl",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
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
            "run": "pairs2hic.18.cwl",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "id": "#pairs2hic"
        }
    ],
    "class": "Workflow",
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
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}