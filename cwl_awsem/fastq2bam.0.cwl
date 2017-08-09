{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        }
    ],
    "hints": [
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "draft-3",
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index"
        }
    ],
    "class": "CommandLineTool",
    "arguments": []
}