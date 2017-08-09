{
    "requirements": [],
    "cwlVersion": "draft-3",
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
            "id": "#ncores",
            "default": "4",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "outputs": [
        {
            "id": "#output_mcool",
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "steps": [
        {
            "id": "#coolerbalance",
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "run": "coolerbalance.2.cwl",
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
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": "cool2mcool.2.cwl",
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
    ]
}