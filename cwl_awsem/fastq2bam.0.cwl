{
    "arguments": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
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
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": false,
                "position": 2
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 3
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index"
        }
    ],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1"
        },
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        }
    ],
    "cwlVersion": "draft-3"
}