{
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
    "arguments": [],
    "sbg:latestRevision": 0,
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
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
                "separate": false,
                "sbg:cmdInclude": true
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
                "separate": false,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
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
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "BED",
            "id": "#RE_bed"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        }
    ],
    "sbg:image_url": null,
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "stdin": "",
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedOn": 1473274836,
            "sbg:revision": 0
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "sbg:createdOn": 1473274836,
    "successCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "label": "hictool-bam2hdf5",
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
    "sbg:validationErrors": [],
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_bam2": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam2.bam",
                "class": "File",
                "size": 0
            },
            "input_bam1": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "class": "File",
                "size": 0
            },
            "output_dir": "output_dir",
            "RE_bed": {
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "class": "File",
                "size": 0
            }
        }
    },
    "sbg:modifiedOn": 1473274836,
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:sbgMaintained": false,
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 0
}