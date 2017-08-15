{
    "cwlVersion": "draft-3",
    "steps": [
        {
            "run": "md5.1.cwl",
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#md5.input_file"
                }
            ],
            "id": "#md5",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "run": "validate.10.cwl",
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#validatefiles.input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "id": "#validatefiles",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
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
    "class": "Workflow",
    "outputs": [
        {
            "source": "#validatefiles.report",
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "source": "#md5.report",
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}