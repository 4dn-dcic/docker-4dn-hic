{
    "requirements": [],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "outputs": [
        {
            "source": [
                "#validatefiles.report"
            ],
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": [
                "#md5.report"
            ],
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "Workflow",
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
            "id": "#md5",
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
            "id": "#validatefiles",
            "run": "validate.10.cwl"
        }
    ],
    "cwlVersion": "draft-3"
}