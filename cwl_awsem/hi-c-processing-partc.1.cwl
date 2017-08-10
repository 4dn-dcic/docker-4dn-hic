{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool"
        },
        {
            "default": 4,
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        }
    ],
    "steps": [
        {
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
            "id": "#coolerbalance",
            "run": "coolerbalance.2.cwl"
        },
        {
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
            "id": "#cool2mcool",
            "run": "cool2mcool.2.cwl"
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "source": "#cool2mcool.output_mcool",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool"
        }
    ],
    "requirements": []
}