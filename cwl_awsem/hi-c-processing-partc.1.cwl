{
    "steps": [
        {
            "run": "coolerbalance.2.cwl",
            "id": "#coolerbalance",
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
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
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
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
    "inputs": [
        {
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "default": 4,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [],
    "class": "Workflow"
}