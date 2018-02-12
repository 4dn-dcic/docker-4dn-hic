{
    "stdout": "",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 4
        },
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement"
        }
    ],
    "sbg:createdOn": 1473274836,
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "description": "",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "inputs": [
        {
            "id": "#input_bam1",
            "inputBinding": {
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_bam2",
            "inputBinding": {
                "separate": false,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#RE_bed",
            "inputBinding": {
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "successCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:validationErrors": [],
    "outputs": [
        {
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "class": "Expression"
                }
            }
        }
    ],
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_bam1": {
                "size": 0,
                "path": "/path/to/input_bam1.bam",
                "secondaryFiles": [],
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_bam2": {
                "size": 0,
                "path": "/path/to/input_bam2.bam",
                "secondaryFiles": [],
                "class": "File"
            },
            "RE_bed": {
                "size": 0,
                "path": "/path/to/RE_bed.ext",
                "secondaryFiles": [],
                "class": "File"
            }
        }
    },
    "sbg:latestRevision": 0,
    "sbg:revision": 0,
    "sbg:projectName": "Dev",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedOn": 1473274836
        }
    ],
    "temporaryFailCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "label": "hictool-bam2hdf5",
    "arguments": [],
    "sbg:modifiedOn": 1473274836,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
}