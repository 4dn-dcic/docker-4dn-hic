{
    "requirements": [],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "Workflow",
    "steps": [
        {
            "run": "md5.1.cwl",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": "#input_file"
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
                    "id": "#validatefiles.input_file",
                    "source": "#input_file"
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
    ]
}