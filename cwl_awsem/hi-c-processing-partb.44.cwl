{
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
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "default": 5000
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
    "steps": [
        {
            "id": "#merge_pairs",
            "run": "merge-pairs.30.cwl",
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
                    "source": "#input_pairs",
                    "id": "#merge_pairs.input_pairs"
                }
            ]
        },
        {
            "id": "#cooler",
            "run": "cooler.24.cwl",
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
            ]
        },
        {
            "id": "#pairs2hic",
            "run": "pairs2hic.18.cwl",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
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
            ]
        }
    ],
    "class": "Workflow",
    "outputs": [
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}