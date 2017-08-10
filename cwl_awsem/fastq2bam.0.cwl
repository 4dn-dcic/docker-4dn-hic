{
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "id": "#input_fastq1"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "id": "#input_fastq2"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 4,
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                }
            },
            "default": ".",
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "id": "#bowtie_index"
        }
    ],
    "arguments": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ]
}