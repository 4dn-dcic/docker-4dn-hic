{
    "outputs": [
        {
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ],
            "source": "#add_hic_normvector_to_mcool.output_mcool"
        },
        {
            "id": "#output_normvector",
            "type": [
                "null",
                "File"
            ],
            "source": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "steps": [
        {
            "id": "#cool2mcool",
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
            ],
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        },
        {
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "run": "extract-mcool-normvector-for-juicebox-1.1.cwl",
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool",
                    "source": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ]
        },
        {
            "id": "#add_hic_normvector_to_mcool",
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
            ],
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ]
        }
    ],
    "cwlVersion": "draft-3",
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
    ]
}