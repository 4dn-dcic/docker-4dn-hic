{
    "class": "Workflow",
    "requirements": [],
    "cwlVersion": "draft3",
    "inputs": [
        {
            "label": "chrsizes",
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "input_pairs",
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
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res"
        },
        {
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "required": false,
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "outputs": [
        {
            "required": false,
            "label": "output_pairs_index",
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index"
        },
        {
            "required": false,
            "label": "output_pairs",
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        },
        {
            "required": false,
            "label": "out_cool",
            "source": [
                "#cooler.out_cool"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool"
        },
        {
            "required": false,
            "label": "output_hic",
            "source": [
                "#pairs2hic.output_hic"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic"
        }
    ]
}