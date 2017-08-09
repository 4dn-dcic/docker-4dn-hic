{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/merge-pairs:v1"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft3",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz'",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz.px2'",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs_index"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true
            },
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
            "id": "#input_pairs",
            "inputBinding": {
                "itemSeparator": " ",
                "secondaryFiles": [],
                "position": 3,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs_index"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "id": "#outdir"
        }
    ],
    "arguments": []
}