{
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
            ],
            "default": "4"
        }
    ],
    "outputs": [
        {
            "source": "#cool2mcool.output_mcool",
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "Workflow",
    "steps": [
        {
            "id": "#coolerbalance",
            "inputs": [
                {
                    "source": "#input_cool",
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
            ],
            "run": "coolerbalance.2.cwl"
        },
        {
            "id": "#cool2mcool",
            "inputs": [
                {
                    "source": "#coolerbalance.out_cool",
                    "id": "#cool2mcool.input_cool"
                },
                {
                    "source": "#ncores",
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
            ],
            "run": "cool2mcool.2.cwl"
        }
    ],
    "requirements": []
}