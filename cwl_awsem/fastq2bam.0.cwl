{
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 2,
                "separate": false
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false
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
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "string"
            ],
            "default": ".",
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "position": 1,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "class": "CommandLineTool",
    "cwlVersion": "draft-3",
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
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}