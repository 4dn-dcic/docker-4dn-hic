{
    "class": "Workflow",
    "cwlVersion": "draft3",
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
    "requirements": [],
    "outputs": [
        {
            "id": "#validatefiles_report",
            "label": "validate_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#validatefiles.report"
            ]
        },
        {
            "id": "#md5_report",
            "label": "md5_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#md5.report"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_file",
            "label": "input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}