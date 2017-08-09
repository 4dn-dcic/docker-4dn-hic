{
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft3",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
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
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
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
    "class": "CommandLineTool",
    "arguments": [],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ]
}