{
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
    "class": "Workflow",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "id": "#merge_pairs",
            "run": "merge-pairs.30.cwl",
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
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "id": "#cooler",
            "run": "cooler.24.cwl",
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
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "id": "#pairs2hic",
            "run": "pairs2hic.18.cwl",
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
                    "type": "array",
                    "items": "File"
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
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "default": "14g"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}