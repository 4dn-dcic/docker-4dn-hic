{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "sbg:image_url": null,
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "arguments": [],
    "sbg:sbgMaintained": false,
    "label": "hictool-bam2hdf5",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:projectName": "Dev",
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#input_bam1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 1,
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
                "separate": false,
                "position": 2,
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
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "sbg:cmdInclude": true,
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
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "BED"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274836
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
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
    "sbg:latestRevision": 0,
    "baseCommand": [
        "run.sh"
    ],
    "successCodes": [],
    "stdout": "",
    "stdin": "",
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "RE_bed": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "class": "File"
            },
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
            }
        }
    },
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1473274836,
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:revision": 0,
    "sbg:project": "4dn-dcic/dev",
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
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:validationErrors": [],
    "sbg:createdOn": 1473274836,
    "temporaryFailCodes": []
}