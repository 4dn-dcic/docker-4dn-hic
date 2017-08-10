{
    "steps": [
        {
            "inputs": [
                {
                    "source": "#input_file",
                    "id": "#md5.input_file"
                }
            ],
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": "md5.1.cwl",
            "id": "#md5"
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
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": "validate.10.cwl",
            "id": "#validatefiles"
        }
    ],
    "requirements": [],
    "class": "Workflow",
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
    "cwlVersion": "draft-3"
}