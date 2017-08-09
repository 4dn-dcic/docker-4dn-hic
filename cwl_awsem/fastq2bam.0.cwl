{
    "arguments": [],
    "class": "CommandLineTool",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            },
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "id": "#input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "position": 4,
                "separate": false
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft3"
}