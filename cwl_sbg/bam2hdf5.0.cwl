{
    "sbg:modifiedBy": "duplexa",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "stdout": "",
    "sbg:modifiedOn": 1473274836,
    "successCodes": [],
    "sbg:revision": 0,
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:createdOn": 1473274836,
    "stdin": "",
    "arguments": [],
    "sbg:validationErrors": [],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam1",
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_bam2",
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "separate": false,
                "position": 2,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "position": 4,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed",
            "sbg:fileTypes": "BED",
            "inputBinding": {
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:job": {
        "inputs": {
            "input_bam1": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "size": 0
            },
            "output_dir": "output_dir",
            "RE_bed": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "size": 0
            },
            "input_bam2": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_bam2.bam",
                "size": 0
            }
        },
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        }
    },
    "description": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedOn": 1473274836,
            "sbg:revision": 0
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:image_url": null,
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:latestRevision": 0,
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": []
}