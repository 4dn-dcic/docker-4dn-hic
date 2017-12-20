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
                
                "int"
            ],
            "id": "#nthreads",
            "inputBinding": {
                "position": 3,
                "separate": true
            },
            "default": 1
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#memperthread",
            "inputBinding": {
                "position": 2,
                "separate": true
            },
            "default": "5G"
        },
        {
            "type": [
                
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 5,
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
                "position": 4,
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
            "id": "#out_filtered_sorted_bam",
            "outputBinding": {
                "glob": "$(inputs.outdir + '/' + inputs.outprefix + '.q20_sort.bam')"
            }
        }
    ],
    "baseCommand": [
        "filtersort"
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "cwlVersion": "draft-3"
}
