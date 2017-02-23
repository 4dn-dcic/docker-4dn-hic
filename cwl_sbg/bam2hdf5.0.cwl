{
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "stdout": "",
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
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "dockerImageId": ""
        }
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "class": "CommandLineTool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
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
    "sbg:latestRevision": 0,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "arguments": [],
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedOn": 1473274836,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1473274836,
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:revision": 0,
    "successCodes": [],
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
                }
            }
        }
    ],
    "inputs": [
        {
            "id": "#input_bam1",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM"
        },
        {
            "id": "#input_bam2",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM"
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                }
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#RE_bed",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED"
        }
    ],
    "description": "",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1473274836,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "sbg:job": {
        "inputs": {
            "input_bam2": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam2.bam"
            },
            "input_bam1": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam1.bam"
            },
            "RE_bed": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/RE_bed.ext"
            },
            "output_dir": "output_dir"
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "label": "hictool-bam2hdf5",
    "baseCommand": [
        "run.sh"
    ]
}