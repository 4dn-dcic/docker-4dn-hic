{
    "outputs": [
        {
            "label": "validate_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#validatefiles.report"
            ],
            "id": "#validatefiles_report"
        },
        {
            "label": "md5_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#md5.report"
            ],
            "id": "#md5_report"
        }
    ],
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
    "cwlVersion": "draft-3",
    "requirements": [],
    "class": "Workflow",
    "inputs": [
        {
            "label": "input_file",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ]
}