{
    "class": "Workflow",
    "steps": [
        {
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
                    "source": "#cool2mcool.output_mcool",
                    "id": "#add_hic_normvector_to_mcool.input_mcool"
                },
                {
                    "source": "#input_hic",
                    "id": "#add_hic_normvector_to_mcool.input_hic"
                }
            ],
            "run": "add-hic-normvector-to-mcool.5.cwl",
            "id": "#add_hic_normvector_to_mcool"
        },
        {
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
                    "source": "#nres",
                    "id": "#extract_mcool_normvector_for_juicebox.nres"
                },
                {
                    "source": "#add_hic_normvector_to_mcool.output_mcool",
                    "id": "#extract_mcool_normvector_for_juicebox.input_mcool"
                }
            ],
            "run": "extract-mcool-normvector-for-juicebox.6.cwl",
            "id": "#extract_mcool_normvector_for_juicebox"
        },
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
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
            "run": "cool2mcool.3.cwl",
            "id": "#cool2mcool"
        }
    ],
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
            "type": [
                "null",
                "File"
            ],
            "id": "#output_normvector",
            "source": "#extract_mcool_normvector_for_juicebox.output_normvector"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_hic"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#nres",
            "default": 13
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "default": 4
        }
    ]
}