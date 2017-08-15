{
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_noDup.sort.bam')"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam1",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair1.bam')"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam2",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair2.bam')"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq1",
            "inputBinding": {
                "separate": false,
                "position": 2
            }
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq2",
            "inputBinding": {
                "separate": false,
                "position": 3
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": false,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "position": 4
            },
            "id": "#output_dir",
            "default": "."
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index",
            "inputBinding": {
                "separate": false,
                "position": 1
            }
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ]
}