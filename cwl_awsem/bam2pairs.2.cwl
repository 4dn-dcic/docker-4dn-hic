{
    "arguments": [],
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
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#out_prefix"
        }
    ],
    "class": "CommandLineTool"
}