{
    "class": "CommandLineTool",
    "requirements": [],
    "outputs": [
        {
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "File"
            ]
        },
        {
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ]
        }
    ]
}