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
    "requirements": [],
    "steps": [
        {
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
            ],
            "run": "md5.1.cwl"
        },
        {
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
            ],
            "run": "validate.10.cwl"
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
    "cwlVersion": "draft-3",
    "class": "Workflow"
}