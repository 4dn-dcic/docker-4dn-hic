{
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "label": "output_mcool"
        }
    ],
    "class": "Workflow",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool",
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
    "cwlVersion": "draft3",
    "steps": [
        {
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
                    "id": "#coolerbalance.max_iter",
                    "default": 5000
                },
                {
                    "id": "#coolerbalance.outprefix",
                    "default": "out"
                }
            ],
            "run": "coolerbalance.2.cwl"
        },
        {
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
                    "id": "#cool2mcool.outprefix",
                    "default": "out"
                }
            ],
            "run": "cool2mcool.2.cwl"
        }
    ]
}