{
    "arguments": [],
    "cwlVersion": "v1.0",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs_index"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2
            },
            "id": "#chromsizes"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#sample_name"
        },
        {
            "type": [
                "null",
                {
                    "name": "enzyme",
                    "type": "enum",
                    "symbols": [
                        "4",
                        "6"
                    ]
                }
            ],
            "inputBinding": {
                "separate": true,
                "position": 4
            },
            "id": "#enzyme"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "'.'"
                },
                "position": 5
            },
            "default": ".",
            "id": "#output_dir"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v6"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-pairsqc-single.sh"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/*report.zip')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ]
}
