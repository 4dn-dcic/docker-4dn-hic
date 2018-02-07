{
    "arguments": [],
    "outputs": [
        {
            "id": "#cooler_normvector",
            "outputBinding": {
                "glob": "*.juicerformat.gz"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_mcool",
            "inputBinding": {
                "separate": true,
                "prefix": "-i",
                "position": 1
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#chromsize",
            "inputBinding": {
                "separate": true,
                "prefix": "-c",
                "position": 2
            },
            "type": [
                "File"
            ]
        },
        {
            "default": ".",
            "id": "#outdir",
            "inputBinding": {
                "separate": true,
                "prefix": "-d",
                "position": 3
            },
            "type": [
                "string"
            ]
        },
        {
            "default": "out",
            "id": "#output_prefix",
            "inputBinding": {
                "separate": true,
                "prefix": "-o",
                "position": 4
            },
            "type": [
                "string"
            ]
        },
        {
            "default": false,
            "id": "#higlass",
            "inputBinding": {
                "separate": true,
                "prefix": "-g",
                "position": 5
            },
            "type": [
                "int"
            ]
        },
        {
            "default": 13,
            "id": "#nres",
            "inputBinding": {
                "separate": true,
                "prefix": "-l",
                "position": 6
            },
            "type": [
                "int"
            ]
       },
        {
            "default": "1000,2000,5000,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000",
            "id": "#custom_res",
            "inputBinding": {
                "separate": true,
                "prefix": "-u",
                "position": 7
            },
            "type": [
                "string"
            ]
       },
       {
            "default": 1000,
            "id": "#min_res",
            "inputBinding": {
                "separate": true,
                "prefix": "-r",
                "position": 8
            },
            "type": [
                "int"
            ]
       }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "class": "CommandLineTool",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v42"
        }
    ]
}
