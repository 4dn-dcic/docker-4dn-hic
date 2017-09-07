{
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#bwaIndex"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#reference_fasta"
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file"
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#restriction_file"
        },
        {
            "inputBinding": {
                "position": 8,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "id": "#outdir"
        },
        {
            "inputBinding": {
                "position": 7,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "default": 8,
            "id": "#ncores"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.outdir + '/data_dir/aligned/merged_nodups.txt')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#merged_nodups"
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "run-juicer.sh"
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ]
}
