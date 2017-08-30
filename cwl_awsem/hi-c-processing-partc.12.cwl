{
    "class": "Workflow",
    "inputs": [
        {
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_hic",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "default": 13,
            "id": "#nres",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "default": 4,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "source": "#add_hic_normvector_to_mcool.output_mcool"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_normvector",
            "source": "#extract_mcool_normvector_for_juicebox.output_normvector"
        }
    ],
    "steps": [
        {
            "id": "#add_hic_normvector_to_mcool",
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.outdir"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_mcool",
                    "source": "#cool2mcool.output_mcool"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_hic",
                    "source": "#input_hic"
                }
            ],
            "run": "add-hic-normvector-to-mcool.5.cwl"
        },
        {
            "id": "#extract_mcool_normvector_for_juicebox",
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_prefix"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.outdir"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.nres",
                    "source": "#nres"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.input_mcool",
                    "source": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": "extract-mcool-normvector-for-juicebox.6.cwl"
        },
        {
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "inputs": [
                {
                    "id": "#cool2mcool.input_cool",
                    "source": "#input_cool"
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": "#ncores"
                },
                {
                    "id": "#cool2mcool.outprefix"
                }
            ],
            "run": "cool2mcool.3.cwl"
        }
    ]
}