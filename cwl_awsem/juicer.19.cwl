{
    "baseCommand": [
        "run-juicer.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        }
    ],
    "outputs": [
        {
            "id": "#merged_nodups",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.outdir + '/data_dir/aligned/merged_nodups.txt')"
            }
        }
    ],
    "inputs": [
        {
            "id": "#input_fastq1",
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_fastq2",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#bwaIndex",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#reference_fasta",
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chromsizes_file",
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#restriction_file",
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#outdir",
            "inputBinding": {
                "position": 8,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": "\".\""
        },
        {
            "id": "#ncores",
            "inputBinding": {
                "position": 7,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "default": 8
        }
    ]
}