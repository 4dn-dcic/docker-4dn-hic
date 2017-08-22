{
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
            "id": "#nres",
            "type": [
                "null",
                "int"
            ],
            "default": 13
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "default": 4
        }
    ],
    "cwlVersion": "draft-3",
    "class": "Workflow",
    "outputs": [
        {
            "source": "#add_hic_normvector_to_mcool.output_mcool",
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": "#extract_mcool_normvector_for_juicebox.output_normvector",
            "id": "#output_normvector",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "steps": [
        {
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.outdir"
                },
                {
                    "source": "#cool2mcool.output_mcool",
                    "id": "#add_hic_normvector_to_mcool.input_mcool"
                },
                {
                    "source": "#input_hic",
                    "id": "#add_hic_normvector_to_mcool.input_hic"
                }
            ],
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": "add-hic-normvector-to-mcool.5.cwl",
            "id": "#add_hic_normvector_to_mcool"
        },
        {
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_prefix"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.outdir"
                },
                {
                    "source": "#nres",
                    "id": "#extract_mcool_normvector_for_juicebox.nres"
                },
                {
                    "source": "#add_hic_normvector_to_mcool.output_mcool",
                    "id": "#extract_mcool_normvector_for_juicebox.input_mcool"
                }
            ],
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "run": "extract-mcool-normvector-for-juicebox.6.cwl",
            "id": "#extract_mcool_normvector_for_juicebox"
        },
        {
            "inputs": [
                {
                    "source": "#input_cool",
                    "id": "#cool2mcool.input_cool"
                },
                {
                    "source": "#ncores",
                    "id": "#cool2mcool.ncores"
                },
                {
                    "id": "#cool2mcool.outprefix"
                }
            ],
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": "cool2mcool.3.cwl",
            "id": "#cool2mcool"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}