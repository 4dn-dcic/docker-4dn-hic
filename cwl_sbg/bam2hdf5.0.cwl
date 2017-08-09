{
    "label": "hictool-bam2hdf5",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "class": "Expression"
                }
            }
        }
    ],
    "sbg:image_url": null,
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "successCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_bam1": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_bam2": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_bam2.bam",
                "class": "File"
            },
            "RE_bed": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "class": "File"
            }
        }
    },
    "class": "CommandLineTool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "description": "",
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:latestRevision": 0,
    "sbg:contributors": [
        "duplexa"
    ],
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
    "stdout": "",
    "sbg:modifiedBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam1"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam2"
        },
        {
            "type": [
                "null",
                "string"
            ],
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
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BED",
            "id": "#RE_bed"
        }
    ],
    "arguments": [],
    "sbg:revision": 0,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1473274836,
    "sbg:createdOn": 1473274836,
    "temporaryFailCodes": [],
    "stdin": "",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836
        }
    ],
    "sbg:createdBy": "duplexa"
}