{
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam1",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_bam2",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "sbg:fileTypes": "BED"
        }
    ],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "temporaryFailCodes": [],
    "sbg:createdOn": 1473274836,
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
    "sbg:modifiedOn": 1473274836,
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "sbg:image_url": null,
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "successCodes": [],
    "description": "",
    "label": "hictool-bam2hdf5",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "input_bam2": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_bam2.bam",
                "secondaryFiles": []
            },
            "input_bam1": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_bam1.bam",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "RE_bed": {
                "size": 0,
                "class": "File",
                "path": "/path/to/RE_bed.ext",
                "secondaryFiles": []
            }
        }
    },
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "sbg:latestRevision": 0,
    "sbg:sbgMaintained": false,
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
    "sbg:revision": 0,
    "stdout": "",
    "class": "CommandLineTool"
}