{
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
    "baseCommand": [
        "preprocessing.sh"
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression"
                }
            },
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "class": "Expression"
                }
            },
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression"
                }
            },
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": false,
                "position": 2
            },
            "id": "#input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 3
            },
            "id": "#input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "separate": false,
                "position": 4
            },
            "id": "#output_dir",
            "default": ".",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 1
            },
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft-3"
}