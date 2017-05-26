{
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1473274836,
    "baseCommand": [
        "run.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:modifiedBy": "duplexa",
    "arguments": [],
    "description": "",
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "class": "CommandLineTool",
    "sbg:latestRevision": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 0,
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1473274836,
    "hints": [
        {
            "value": 4,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 24000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "RE_bed": {
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "size": 0,
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_bam2": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam2.bam",
                "size": 0,
                "class": "File"
            },
            "input_bam1": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "size": 0,
                "class": "File"
            }
        }
    },
    "label": "hictool-bam2hdf5",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5"
        }
    ],
    "stdin": "",
    "successCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274836,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
        }
    ],
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "id": "#input_bam1"
        },
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "id": "#input_bam2"
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED",
            "id": "#RE_bed"
        }
    ]
}