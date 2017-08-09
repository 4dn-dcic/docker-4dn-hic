{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "arguments": [],
    "requirements": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "baseCommand": [
        "run.sh"
    ]
}