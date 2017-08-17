{
    "steps": [
        {
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": "#input_file"
                }
            ],
            "id": "#md5",
            "run": "md5.1.cwl",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#validatefiles.input_file",
                    "source": "#input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "id": "#validatefiles",
            "run": "validate.10.cwl",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ],
            "source": "#validatefiles.report"
        },
        {
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ],
            "source": "#md5.report"
        }
    ],
    "inputs": [
        {
            "id": "#input_file",
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
    ],
    "class": "Workflow"
}