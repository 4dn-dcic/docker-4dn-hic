{
    "outputs": [
        {
            "id": "#out_filtered_bed",
            "type": [
                
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.filtered.bed')"
            }
        }
    ],
    "baseCommand": [
        "make_filteredbed"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v10",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "arguments": [],
    "inputs": [
        {
            "id": "#outdir",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "default": ".",
            "type": [
                
                "string"
            ]
        },
        {
            "id": "#outprefix",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": "out",
            "type": [
                
                "string"
            ]
        },
        {
            "type": [
                "float"
            ],
            "id": "#min_rpkm",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": 0.1
        },
        {
            "id": "#input_bgs",
            "inputBinding": {
                "itemSeparator": " ",
                "position": 4,
                "separate": true
            },
            "type": [
                
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
