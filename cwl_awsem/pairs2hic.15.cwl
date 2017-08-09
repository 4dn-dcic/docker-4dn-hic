{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic"
        }
    ],
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
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "requirements": [],
    "class": "CommandLineTool",
    "arguments": [],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ]
}