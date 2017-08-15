{
    "steps": [
        {
            "run": "md5.1.cwl",
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
            "run": "validate.10.cwl",
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
    "requirements": {
        "class": "InlineJavascriptRequirement"
    },
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
    "cwlVersion": "draft-3",
    "class": "Workflow"
}