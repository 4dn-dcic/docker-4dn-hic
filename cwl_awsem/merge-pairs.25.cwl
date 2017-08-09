{
    "arguments": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ],
    "outputs": [
        {
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ]
}