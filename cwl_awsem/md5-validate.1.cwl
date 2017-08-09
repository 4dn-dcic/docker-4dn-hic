{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "requirements": [],
    "class": "Workflow",
    "outputs": [
        {
            "id": "#validatefiles_report",
            "source": [
                "#validatefiles.report"
            ],
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#md5_report",
            "source": [
                "#md5.report"
            ],
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "id": "#md5",
            "run": "md5.1.cwl",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#validatefiles.input_file",
                    "source": [
                        "#input_file"
                    ]
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "id": "#validatefiles",
            "run": "validate.10.cwl",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ]
}