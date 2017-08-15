{
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
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "label": "hictool-bam2hdf5",
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "class": "CommandLineTool",
    "sbg:revision": 0,
    "sbg:modifiedBy": "duplexa",
    "temporaryFailCodes": [],
    "stdin": "",
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
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:latestRevision": 0,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "RE_bed": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/RE_bed.ext"
            },
            "output_dir": "output_dir",
            "input_bam2": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam2.bam"
            },
            "input_bam1": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam1.bam"
            }
        }
    },
    "sbg:image_url": null,
    "sbg:projectName": "Dev",
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
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
            "id": "#input_bam1",
            "sbg:fileTypes": "BAM"
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
            "id": "#input_bam2",
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "separate": false,
                "sbg:cmdInclude": true,
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
            "id": "#RE_bed",
            "sbg:fileTypes": "BED"
        }
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedOn": 1473274836,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:modifiedOn": 1473274836,
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdOn": 1473274836,
    "successCodes": [],
    "sbg:validationErrors": []
}