{
    "class": "CommandLineTool",
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
    "requirements": [],
    "arguments": [],
    "baseCommand": [
        "run.sh"
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
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ]
}