{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool",
            "label": "input_cool"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "label": "output_mcool",
            "source": [
                "#cool2mcool.output_mcool"
            ]
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "cwlVersion": "draft3",
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
                    "id": "#coolerbalance.max_iter",
                    "default": 5000
                },
                {
                    "id": "#coolerbalance.outprefix",
                    "default": "out"
                }
            ],
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "run": "coolerbalance.2.cwl"
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
                    "id": "#cool2mcool.outprefix",
                    "default": "out"
                }
            ],
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": "cool2mcool.2.cwl"
        }
    ]
}