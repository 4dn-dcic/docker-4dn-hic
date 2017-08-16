{
    "label": "hictool-bam2hdf5",
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
    "sbg:projectName": "Dev",
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "input_bam1": {
                "path": "/path/to/input_bam1.bam",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
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
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "sbg:modifiedBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 0,
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274836,
            "sbg:revision": 0
        }
    ],
    "sbg:latestRevision": 0,
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
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:createdBy": "duplexa",
    "description": "",
    "successCodes": [],
    "arguments": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:modifiedOn": 1473274836,
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "stdin": "",
    "sbg:sbgMaintained": false,
    "stdout": "",
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            }
        },
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam2",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            }
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": false
            }
        },
        {
            "sbg:fileTypes": "BED",
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            }
        }
    ],
    "sbg:createdOn": 1473274836,
    "class": "CommandLineTool",
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4"
}