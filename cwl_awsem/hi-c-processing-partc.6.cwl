{
    "class": "Workflow",
    "requirements": [],
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
            "default": 4,
            "id": "#ncores"
        }
    ],
    "steps": [
        {
            "id": "#cool2mcool",
            "inputs": [
                {
                    "id": "#cool2mcool.outprefix"
                },
                {
                    "source": "#ncores",
                    "id": "#cool2mcool.ncores"
                },
                {
                    "source": "#input_cool",
                    "id": "#cool2mcool.input_cool"
                }
            ],
            "run": "cool2mcool.2.cwl",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        },
        {
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "inputs": [
                {
                    "source": "#add_hic_normvector_to_mcool.output_mcool",
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool"
                }
            ],
            "run": "extract-mcool-normvector-for-juicebox-1.1.cwl",
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ]
        },
        {
            "id": "#add_hic_normvector_to_mcool",
            "inputs": [
                {
                    "source": "#input_hic",
                    "id": "#add_hic_normvector_to_mcool.input_hic"
                },
                {
                    "source": "#cool2mcool.output_mcool",
                    "id": "#add_hic_normvector_to_mcool.input_mcool"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.outdir"
                }
            ],
            "run": "add-hic-normvector-to-mcool.4.cwl",
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ]
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
            "source": "#extract_mcool_normvector_for_juicebox_1.output_normvector",
            "id": "#output_normvector"
        }
    ]
}