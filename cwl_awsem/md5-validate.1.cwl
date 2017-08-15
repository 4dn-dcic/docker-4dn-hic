{
    "class": "Workflow",
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
                    "source": "#input_file",
                    "id": "#md5.input_file"
                }
            ],
            "id": "#md5"
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
                    "source": "#input_file",
                    "id": "#validatefiles.input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "id": "#validatefiles"
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
    ],
    "cwlVersion": "draft-3",
    "requirements": {
        "class": "InlineJavascriptRequirement"
    }
}