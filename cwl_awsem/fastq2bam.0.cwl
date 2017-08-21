{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "baseCommand": [
        "preprocessing.sh"
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
    "inputs": [
        {
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 2
            }
        },
        {
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 3
            }
        },
        {
            "id": "#output_dir",
            "default": ".",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": false,
                "position": 4,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 1
            }
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "arguments": [],
    "class": "CommandLineTool"
}