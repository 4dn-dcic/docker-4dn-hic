{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "source": [
                "#cool2mcool.output_mcool"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [],
    "steps": [
        {
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "run": "coolerbalance.2.cwl",
            "id": "#coolerbalance",
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
            ]
        },
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": "cool2mcool.2.cwl",
            "id": "#cool2mcool",
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
            ]
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
    "class": "Workflow"
}