{
    "steps": [
        {
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": "md5.1.cwl",
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": "#input_file"
                }
            ]
        },
        {
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
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
            ]
        }
    ],
    "cwlVersion": "draft-3",
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
    "requirements": [],
    "class": "Workflow"
}