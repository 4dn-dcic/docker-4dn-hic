{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:createdOn": 1473274836,
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "successCodes": [],
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:project": "4dn-dcic/dev",
    "stdin": "",
    "sbg:latestRevision": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_bam1": {
                "path": "/path/to/input_bam1.bam",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "output_dir": "output_dir",
            "RE_bed": {
                "path": "/path/to/RE_bed.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "input_bam2": {
                "path": "/path/to/input_bam2.bam",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            }
        }
    },
    "class": "CommandLineTool",
    "stdout": "",
    "sbg:validationErrors": [],
    "label": "hictool-bam2hdf5",
    "temporaryFailCodes": [],
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
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:modifiedOn": 1473274836,
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:revision": 0,
    "arguments": [],
    "inputs": [
        {
            "id": "#input_bam1",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_bam2",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#RE_bed",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}