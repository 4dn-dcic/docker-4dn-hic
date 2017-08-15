{
    "sbg:job": {
        "inputs": {
            "input_bam2": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam2.bam",
                "size": 0,
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_bam1": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "size": 0,
                "class": "File"
            },
            "RE_bed": {
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        }
    },
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam1"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
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
                "separate": false,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "position": 4
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "sbg:fileTypes": "BED",
            "id": "#RE_bed"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "successCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274836,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:sbgMaintained": false,
    "stdin": "",
    "sbg:createdOn": 1473274836,
    "stdout": "",
    "sbg:validationErrors": [],
    "outputs": [
        {
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
            },
            "id": "#fend_object_hdf5"
        },
        {
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
            },
            "id": "#HiC_data_object_hdf5"
        },
        {
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
            },
            "id": "#HiC_distance_function_hdf5"
        },
        {
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
            },
            "id": "#HiC_norm_binning_hdf5"
        },
        {
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
            },
            "id": "#HiC_project_object_hdf5"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1473274836,
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "label": "hictool-bam2hdf5",
    "cwlVersion": "sbg:draft-2",
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
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "class": "DockerRequirement"
        }
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:latestRevision": 0,
    "sbg:revision": 0,
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:image_url": null,
    "arguments": [],
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "description": ""
}