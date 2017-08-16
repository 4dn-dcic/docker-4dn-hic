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
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "default": 4
        }
    ],
    "steps": [
        {
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": "cool2mcool.2.cwl",
            "inputs": [
                {
                    "id": "#cool2mcool.outprefix"
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": "#ncores"
                },
                {
                    "id": "#cool2mcool.input_cool",
                    "source": "#input_cool"
                }
            ]
        },
        {
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ],
            "run": "extract-mcool-normvector-for-juicebox-1.1.cwl",
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool",
                    "source": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ]
        },
        {
            "id": "#add_hic_normvector_to_mcool",
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": "add-hic-normvector-to-mcool.4.cwl",
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.input_hic",
                    "source": "#input_hic"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_mcool",
                    "source": "#cool2mcool.output_mcool"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.outdir"
                }
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
            "id": "#output_mcool",
            "source": "#add_hic_normvector_to_mcool.output_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_normvector",
            "source": "#extract_mcool_normvector_for_juicebox_1.output_normvector",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}