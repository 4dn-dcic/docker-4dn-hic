{
    "class": "Workflow",
    "steps": [
        {
            "id": "#coolerbalance",
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "inputs": [
                {
                    "id": "#coolerbalance.input_cool",
                    "source": [
                        "#input_cool"
                    ]
                },
                {
                    "id": "#coolerbalance.max_iter"
                },
                {
                    "id": "#coolerbalance.outprefix"
                }
            ],
            "run": "coolerbalance.2.cwl"
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
                    "source": [
                        "#coolerbalance.out_cool"
                    ]
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "id": "#cool2mcool.outprefix"
                }
            ],
            "run": "cool2mcool.2.cwl"
        }
    ],
    "requirements": [],
    "outputs": [
        {
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#cool2mcool.output_mcool"
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
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        }
    ]
}