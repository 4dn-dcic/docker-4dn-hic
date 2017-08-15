{
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_noDup.sort.bam')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair1.bam')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1"
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair2.bam')"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "baseCommand": [
        "preprocessing.sh"
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
            "default": ".",
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "separate": false,
                "position": 4
            }
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
    "arguments": [],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ]
}