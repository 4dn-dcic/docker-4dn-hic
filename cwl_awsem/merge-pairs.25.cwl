{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index"
        }
    ],
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "inputs": [
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
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs"
        }
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
    "class": "CommandLineTool"
}