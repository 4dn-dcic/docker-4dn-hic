{
    "cwlVersion": "draft-3",
    "class": "Workflow",
    "steps": [
        {
            "id": "#md5",
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#md5.input_file"
                }
            ],
            "run": "md5.1.cwl",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "id": "#validatefiles",
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#validatefiles.input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "run": "validate.10.cwl",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
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
    "outputs": [
        {
            "source": "#validatefiles.report",
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report"
        },
        {
            "source": "#md5.report",
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report"
        }
    ]
}