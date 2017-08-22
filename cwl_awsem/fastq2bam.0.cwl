{
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "arguments": [],
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
            "default": ".",
            "inputBinding": {
                "position": 4,
                "separate": false,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
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
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_noDup.sort.bam')"
            },
            "id": "#sorted_bam_pe"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair1.bam')"
            },
            "id": "#split_bam1"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair2.bam')"
            },
            "id": "#split_bam2"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "cwlVersion": "draft-3",
    "baseCommand": [
        "preprocessing.sh"
    ]
}