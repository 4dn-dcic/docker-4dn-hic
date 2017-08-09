{
    "inputs": [
        {
            "id": "#input_fastq1",
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_fastq2",
            "inputBinding": {
                "position": 3,
                "separate": false
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "position": 4,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "separate": false
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#bowtie_index",
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "arguments": [],
    "cwlVersion": "draft3",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam1",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam2",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ]
}