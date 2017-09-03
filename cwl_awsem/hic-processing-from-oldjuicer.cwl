{
    "steps": [
        {
            "inputs": [
                {
                    "id": "#oldjuicer2pairs.input_merged_nodups",
                    "source": "#input_merged_nodups"
                },
                {
                    "id": "#oldjuicer2pairs.chromsize",
                    "source": "#chromsize"
                },
                {
                    "id": "#oldjuicer2pairs.nsplit"
                },
                {
                    "id": "#oldjuicer2pairs.outprefix"
                },
                {
                    "id": "#oldjuicer2pairs.max_remove_mapq"
                }
            ],
            "id": "#oldjuicer2pairs",
            "outputs": [
                {
                    "id": "#oldjuicer2pairs.out_pairs"
                },
                {
                    "id": "#oldjuicer2pairs.out_pairs_px"
                }
            ],
            "run": "oldjuicer2pairs.cwl"
        },
        {
            "inputs": [
                {
                    "id": "#hic_pairs_to_end.chrsizes",
                    "source": "#oldjuicer2pairs.out_pairs"
                },
                {
                    "id": "#hic_pairs_to_end.input_pairs",
                    "source": "#oldjuicer2pairs.out_pairs_px"
                },
                {
                    "id": "#hic_pairs_to_end.ncores"
                },
                {
                    "id": "#hic_pairs_to_end.min_res"
                },
                {
                    "id": "#hic_pairs_to_end.binsize"
                },
                {
                    "id": "#hic_pairs_to_end.ncores_1"
                },
                {
                    "id": "#hic_pairs_to_end.nres"
                }
            ],
            "id": "#hic_pairs_to_end",
            "outputs": [
                {
                    "id": "#hic_pairs_to_end.output_pairs"
                },
                {
                    "id": "#hic_pairs_to_end.output_mcool"
                },
                {
                    "id": "#hic_pairs_to_end.output_normvector"
                },
                {
                    "id": "#hic_pairs_to_end.output_hic"
                },
                {
                    "id": "#hic_pairs_to_end.output_pairs_index"
                }
            ],
            "run": "hic-pairs-to-end.cwl"
        }
    ],
    "outputs": [
        {
            "id": "#output_pairs_index",
            "source": "#hic_pairs_to_end.output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_pairs",
            "source": "#hic_pairs_to_end.output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_normvector",
            "source": "#hic_pairs_to_end.output_normvector",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_mcool",
            "source": "#hic_pairs_to_end.output_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_hic",
            "source": "#hic_pairs_to_end.output_hic",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_pairs_px",
            "source": "#oldjuicer2pairs.out_pairs_px",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_pairs",
            "source": "#oldjuicer2pairs.out_pairs",
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
    "inputs": [
        {
            "id": "#input_merged_nodups",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chromsize",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "v1.0",
    "class": "Workflow"
}
