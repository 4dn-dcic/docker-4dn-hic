{
    "steps": [
        {
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "id": "#md5",
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#md5.input_file"
                }
            ],
            "run": "md5.1.cwl"
        },
        {
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
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
            "run": "validate.10.cwl"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#validatefiles.report",
            "id": "#validatefiles_report"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": "#md5.report",
            "id": "#md5_report"
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ]
}