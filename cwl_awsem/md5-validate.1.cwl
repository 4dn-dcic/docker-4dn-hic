{
    "requirements": [],
    "steps": [
        {
            "id": "#md5",
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
            ]
        },
        {
            "id": "#validatefiles",
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
            ]
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
    "cwlVersion": "draft-3"
}