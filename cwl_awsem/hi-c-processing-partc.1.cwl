{
    "requirements": [],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool"
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
                "int"
            ],
            "id": "#ncores"
        }
    ],
    "class": "Workflow",
    "steps": [
        {
            "run": "coolerbalance.2.cwl",
            "inputs": [
                {
                    "source": [
                        "#input_cool"
                    ],
                    "id": "#coolerbalance.input_cool"
                },
                {
                    "id": "#coolerbalance.max_iter"
                },
                {
                    "id": "#coolerbalance.outprefix"
                }
            ],
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ]
        },
        {
            "run": "cool2mcool.2.cwl",
            "inputs": [
                {
                    "source": [
                        "#coolerbalance.out_cool"
                    ],
                    "id": "#cool2mcool.input_cool"
                },
                {
                    "source": [
                        "#ncores"
                    ],
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
            ]
        }
    ]
}