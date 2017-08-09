{
    "steps": [
        {
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": "md5.1.cwl",
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
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": "validate.10.cwl",
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
    "inputs": [
        {
            "label": "input_file",
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft3",
    "outputs": [
        {
            "label": "validate_report",
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
            "label": "md5_report",
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
    "class": "Workflow",
    "requirements": []
}