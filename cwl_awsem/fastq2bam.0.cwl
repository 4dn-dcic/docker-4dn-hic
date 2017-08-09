{
    "baseCommand": [
        "preprocessing.sh"
    ],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "arguments": [],
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
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
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
    "class": "CommandLineTool",
    "cwlVersion": "draft-3"
}