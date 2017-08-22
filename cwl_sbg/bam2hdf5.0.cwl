{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "sbg:image_url": null,
    "inputs": [
        {
            "id": "#input_bam1",
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            }
        },
        {
            "id": "#input_bam2",
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
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
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "id": "#RE_bed",
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            }
        }
    ],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "output_dir": "output_dir",
            "input_bam1": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "class": "File"
            },
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
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274836
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1473274836,
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "hictool-bam2hdf5",
    "sbg:modifiedOn": 1473274836,
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
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
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "outputs": [
        {
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "temporaryFailCodes": [],
    "successCodes": [],
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:sbgMaintained": false,
    "stdout": "",
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
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
    "class": "CommandLineTool",
    "description": "",
    "sbg:revision": 0
}