{
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_noDup.sort.bam')"
            }
        },
        {
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair1.bam')"
            }
        },
        {
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair2.bam')"
            }
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#input_fastq1",
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_fastq2",
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "string"
            ],
            "default": "."
        },
        {
            "id": "#bowtie_index",
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ]
        }
    ]
}