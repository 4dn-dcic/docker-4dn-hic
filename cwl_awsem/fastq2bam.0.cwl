{
    "arguments": [],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#sorted_bam_pe"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#split_bam1"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#split_bam2"
        }
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
            "default": ".",
            "inputBinding": {
                "position": 4,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": false
            },
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
    "baseCommand": [
        "preprocessing.sh"
    ],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "cwlVersion": "draft-3"
}