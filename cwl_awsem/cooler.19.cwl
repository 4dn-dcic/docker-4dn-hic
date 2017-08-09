{
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "draft-3",
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs_index"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool"
}