{
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
                "position": 4,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "separate": false
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "default": "."
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
    "cwlVersion": "draft-3",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_noDup.sort.bam')"
            },
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair1.bam')"
            },
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$(inputs.output_dir + '/out_pair2.bam')"
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
            "class": "InlineJavascriptRequirement"
        }
    ]
}