{
    "steps": [
        {
            "run": "coolerbalance.2.cwl",
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
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
            ]
        },
        {
            "run": "cool2mcool.2.cwl",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
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
            ]
        }
    ],
    "class": "Workflow",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#cool2mcool.output_mcool",
            "id": "#output_mcool"
        }
    ],
    "requirements": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool"
        },
        {
            "default": "4",
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        }
    ],
    "cwlVersion": "draft-3"
}