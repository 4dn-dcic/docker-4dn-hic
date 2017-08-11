{
    "successCodes": [],
    "sbg:job": {
        "inputs": {
            "RE_bed": {
                "path": "/path/to/RE_bed.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "input_bam1": {
                "path": "/path/to/input_bam1.bam",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "input_bam2": {
                "path": "/path/to/input_bam2.bam",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        }
    },
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "outputs": [
        {
            "id": "#fend_object_hdf5",
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
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "class": "Expression",
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
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "class": "Expression",
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
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "class": "Expression",
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
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "stdin": "",
    "temporaryFailCodes": [],
    "sbg:revision": 0,
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "arguments": [],
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
    "inputs": [
        {
            "id": "#input_bam1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
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
                "separate": false,
                "sbg:cmdInclude": true
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
                "position": 4,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": false,
                "sbg:cmdInclude": true
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
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "BED"
        }
    ],
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "sbg:modifiedOn": 1473274836,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "label": "hictool-bam2hdf5",
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:latestRevision": 0,
    "description": "",
    "sbg:createdOn": 1473274836,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
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
    ]
}