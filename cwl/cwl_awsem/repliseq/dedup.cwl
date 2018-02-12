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
            "id": "#input_bam",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 3,
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
                "position": 2,
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
            "id": "#out_deduped_bam",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.rmdup.bam')"
            }
        },
        {
            "type": [
                
                "File"
            ],
            "id": "#out_qc_report",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.rmdup.log.qc_report.zip')"
            }
        }
    ],
    "baseCommand": [
        "run-dedup.sh"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
