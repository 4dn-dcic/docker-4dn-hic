{
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "steps": [
        {
            "id": "#md5",
            "run": "md5.1.cwl",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ]
        },
        {
            "id": "#validatefiles",
            "run": "validate.10.cwl",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
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
            ]
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
    "cwlVersion": "draft-3"
}