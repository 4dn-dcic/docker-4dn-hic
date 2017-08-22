{
    "class": "Workflow",
    "cwlVersion": "draft-3",
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
            "run": "md5.5.cwl",
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": "#input_file"
                }
            ],
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "run": "validate.12.cwl",
            "id": "#validatefiles",
            "inputs": [
                {
                    "id": "#validatefiles.input_file",
                    "source": "#input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report",
            "source": "#validatefiles.report"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report",
            "source": "#md5.report"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}