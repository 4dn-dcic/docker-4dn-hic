{
    "inputs": [
        {
            "id": "#pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#pairs_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "outputs": [
        {
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [],
    "cwlVersion": "draft-3"
}