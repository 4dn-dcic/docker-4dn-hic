{
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "id": "#input_bam1",
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "id": "#input_bam2",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "separate": false,
                "position": 4
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:fileTypes": "BED",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "cwlVersion": "sbg:draft-2",
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:latestRevision": 0,
    "sbg:revision": 0,
    "sbg:createdOn": 1473274836,
    "baseCommand": [
        "run.sh"
    ],
    "successCodes": [],
    "label": "hictool-bam2hdf5",
    "description": "",
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "RE_bed": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/RE_bed.ext",
                "class": "File"
            },
            "input_bam1": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam1.bam",
                "class": "File"
            },
            "input_bam2": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam2.bam",
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        }
    },
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
                }
            }
        }
    ],
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
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:modifiedOn": 1473274836,
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam"
}