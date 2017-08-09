{
    "cwlVersion": "draft-3",
    "requirements": [],
    "class": "Workflow",
    "outputs": [
        {
            "source": [
                "#validatefiles.report"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report"
        },
        {
            "source": [
                "#md5.report"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "steps": [
        {
            "run": "md5.1.cwl",
            "id": "#md5",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ]
        },
        {
            "run": "validate.10.cwl",
            "id": "#validatefiles",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#validatefiles.input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ]
        }
    ]
}