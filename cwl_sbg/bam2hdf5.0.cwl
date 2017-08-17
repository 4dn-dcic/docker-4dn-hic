{
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274836,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "description": "",
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_bam1"
        },
        {
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#input_bam2"
        },
        {
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
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "id": "#output_dir"
        },
        {
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "id": "#RE_bed"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "output_dir": "output_dir",
            "RE_bed": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/RE_bed.ext",
                "class": "File"
            },
            "input_bam2": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam2.bam",
                "class": "File"
            },
            "input_bam1": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam1.bam",
                "class": "File"
            }
        }
    },
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "arguments": [],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2"
        }
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1473274836,
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
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
    "sbg:revision": 0,
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#HiC_project_object_hdf5"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "temporaryFailCodes": [],
    "successCodes": [],
    "sbg:latestRevision": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "stdin": ""
}