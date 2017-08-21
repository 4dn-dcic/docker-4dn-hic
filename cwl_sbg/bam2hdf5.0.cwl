{
    "temporaryFailCodes": [],
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
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:image_url": null,
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1473274836,
    "sbg:modifiedOn": 1473274836,
    "inputs": [
        {
            "inputBinding": {
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "id": "#input_bam1",
            "sbg:fileTypes": "BAM"
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "id": "#input_bam2",
            "sbg:fileTypes": "BAM"
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "separate": false,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed",
            "sbg:fileTypes": "BED"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "stdin": "",
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "id": "#fend_object_hdf5",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#HiC_data_object_hdf5",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#HiC_distance_function_hdf5",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#HiC_project_object_hdf5",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "input_bam2": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam2.bam",
                "class": "File",
                "size": 0
            },
            "RE_bed": {
                "secondaryFiles": [],
                "path": "/path/to/RE_bed.ext",
                "class": "File",
                "size": 0
            },
            "input_bam1": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam1.bam",
                "class": "File",
                "size": 0
            },
            "output_dir": "output_dir"
        }
    },
    "sbg:revision": 0,
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "label": "hictool-bam2hdf5",
    "sbg:latestRevision": 0,
    "successCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:projectName": "Dev",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam"
}