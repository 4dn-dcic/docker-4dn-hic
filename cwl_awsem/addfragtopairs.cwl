{
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "default": "out"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v40"
        }
    ],
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outprefix + '.ff.pairs.gz')"
            },
            "type": [
                "null",
                "File"
            ],
            "secondaryFiles": [
                ".px2"
            ],
            "id": "#out_pairs"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-addfrag2pairs.sh"
    ]
}
