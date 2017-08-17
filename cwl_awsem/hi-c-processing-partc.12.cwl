{
    "class": "Workflow",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": "add-hic-normvector-to-mcool.5.cwl",
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
            "id": "#add_hic_normvector_to_mcool"
        },
        {
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "run": "extract-mcool-normvector-for-juicebox.6.cwl",
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
            "id": "#extract_mcool_normvector_for_juicebox"
        },
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": "cool2mcool.3.cwl",
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
            "id": "#cool2mcool"
        }
    ],
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
            "default": 13,
            "id": "#nres"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "default": 4,
            "id": "#ncores"
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
            "source": "#add_hic_normvector_to_mcool.output_mcool",
            "id": "#output_mcool"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#extract_mcool_normvector_for_juicebox.output_normvector",
            "id": "#output_normvector"
        }
    ]
}