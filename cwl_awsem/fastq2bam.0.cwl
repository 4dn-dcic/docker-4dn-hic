{
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#input_fastq1",
            "inputBinding": {
                "separate": false,
                "position": 2
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_fastq2",
            "inputBinding": {
                "separate": false,
                "position": 3
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#output_dir",
            "default": ".",
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#bowtie_index",
            "inputBinding": {
                "separate": false,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "preprocessing.sh"
    ]
}