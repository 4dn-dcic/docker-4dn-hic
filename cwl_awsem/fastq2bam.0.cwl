{
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                }
            }
        },
        {
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
                }
            }
        },
        {
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            }
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "inputs": [
        {
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": false
            }
        },
        {
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "separate": false
            }
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "separate": false
            }
        },
        {
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false
            }
        }
    ],
    "arguments": []
}