{
    "requirements": [],
    "class": "Workflow",
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
    "inputs": [
        {
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "default": "4",
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "steps": [
        {
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
            "run": "coolerbalance.2.cwl",
            "id": "#coolerbalance",
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ]
        },
        {
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
            "run": "cool2mcool.2.cwl",
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        }
    ]
}