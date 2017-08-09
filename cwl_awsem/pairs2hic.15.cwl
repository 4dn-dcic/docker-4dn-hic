{
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic"
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#higlass"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem"
        }
    ],
    "class": "CommandLineTool"
}