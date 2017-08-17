{
    "cwlVersion": "draft-3",
    "arguments": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq1",
            "inputBinding": {
                "position": 2,
                "separate": false
            }
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq2",
            "inputBinding": {
                "position": 3,
                "separate": false
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "position": 4,
                "separate": false
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index",
            "inputBinding": {
                "position": 1,
                "separate": false
            }
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_noDup.sort.bam')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair1.bam')"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2",
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair2.bam')"
            }
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool"
}