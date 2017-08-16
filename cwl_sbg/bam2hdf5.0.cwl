{
    "inputs": [
        {
            "id": "#input_bam1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "id": "#input_bam2",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "sbg:fileTypes": "BAM"
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
                "separate": false,
                "position": 4
            }
        },
        {
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "sbg:fileTypes": "BED"
        }
    ],
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "sbg:validationErrors": [],
    "sbg:createdOn": 1473274836,
    "sbg:modifiedBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:modifiedOn": 1473274836,
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 0,
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
    "label": "hictool-bam2hdf5",
    "sbg:revision": 0,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274836
        }
    ],
    "stdout": "",
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "successCodes": [],
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "input_bam1": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam1.bam"
            },
            "RE_bed": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/RE_bed.ext"
            },
            "input_bam2": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam2.bam"
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "stdin": "",
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
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "description": "",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
}