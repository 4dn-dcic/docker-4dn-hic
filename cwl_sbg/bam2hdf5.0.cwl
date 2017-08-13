{
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1473274836,
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274836
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "description": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "id": "#input_bam1"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "id": "#input_bam2"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": false,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED",
            "id": "#RE_bed"
        }
    ],
    "sbg:modifiedOn": 1473274836,
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "output_dir": "output_dir",
            "input_bam1": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "class": "File",
                "size": 0
            },
            "input_bam2": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam2.bam",
                "class": "File",
                "size": 0
            },
            "RE_bed": {
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "class": "File",
                "size": 0
            }
        }
    },
    "sbg:image_url": null,
    "stdin": "",
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "dockerImageId": ""
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
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
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:project": "4dn-dcic/dev",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "successCodes": [],
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:latestRevision": 0,
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:revision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
    "label": "hictool-bam2hdf5",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "class": "CommandLineTool"
}