{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
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
    "steps": [
        {
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#md5.input_file"
                }
            ],
            "run": "md5.5.cwl",
            "id": "#md5",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#validatefiles.input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "run": "validate.12.cwl",
            "id": "#validatefiles",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ],
    "cwlVersion": "draft-3"
}