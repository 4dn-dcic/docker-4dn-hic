{
    "requirements": [],
    "steps": [
        {
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "id": "#coolerbalance",
            "run": "coolerbalance.2.cwl",
            "inputs": [
                {
                    "id": "#coolerbalance.input_cool",
                    "source": "#input_cool"
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
            "id": "#cool2mcool",
            "run": "cool2mcool.2.cwl",
            "inputs": [
                {
                    "id": "#cool2mcool.input_cool",
                    "source": "#coolerbalance.out_cool"
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": "#ncores"
                },
                {
                    "id": "#cool2mcool.outprefix"
                }
            ]
        }
    ],
    "outputs": [
        {
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ],
            "source": "#cool2mcool.output_mcool"
        }
    ],
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
            "type": [
                "null",
                "int"
            ],
            "default": 4
        }
    ],
    "cwlVersion": "draft-3"
}