{
    "sbg:project": "4dn-dcic/dev",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_bam2": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_bam2.bam",
                "secondaryFiles": []
            },
            "RE_bed": {
                "size": 0,
                "class": "File",
                "path": "/path/to/RE_bed.ext",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "input_bam1": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_bam1.bam",
                "secondaryFiles": []
            }
        }
    },
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "sbg:projectName": "Dev",
    "successCodes": [],
    "sbg:latestRevision": 0,
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1473274836,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "description": "",
    "sbg:validationErrors": [],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "sbg:image_url": null,
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
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:createdOn": 1473274836,
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "hictool-bam2hdf5",
    "sbg:revision": 0,
    "stdout": "",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedOn": 1473274836,
            "sbg:modifiedBy": "duplexa"
        }
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
    "sbg:createdBy": "duplexa",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "baseCommand": [
        "run.sh"
    ],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2"
        }
    ],
    "inputs": [
        {
            "id": "#input_bam1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "id": "#input_bam2",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": false
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": false
            }
        },
        {
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "BED"
        }
    ]
}