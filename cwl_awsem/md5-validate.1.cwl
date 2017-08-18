{
    "cwlVersion": "draft-3",
    "steps": [
        {
            "id": "#md5",
            "run": "md5.1.cwl",
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
            "id": "#validatefiles",
            "run": "validate.10.cwl",
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
    "class": "Workflow",
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
            "id": "#validatefiles_report",
            "source": "#validatefiles.report",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#md5_report",
            "source": "#md5.report",
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