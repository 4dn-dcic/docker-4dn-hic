{
    "hints": [
        {
            "dockerPull": "duplexa/4dn-repliseq:v11",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#fastq1",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "File"
            ],
            "id": "#bwa_index",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "type": [
                "int"
            ],
            "id": "#nThreads",
            "inputBinding": {
                "position": 5,
                "separate": true
            },
            "default": 4
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#prefix",
            "inputBinding": {
                "position": 4,
                "separate": true
            },
            "default": "out"
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#outdir",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": "."
        }
    ],
    "outputs": [
        {
            "type": [
                
                "File"
            ],
            "id": "#out_bam",
            "outputBinding": {
                "glob": "*.bam"
            }
        }
    ],
    "baseCommand": [
        "run-align.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
