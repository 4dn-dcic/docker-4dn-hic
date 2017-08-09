{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "temporaryFailCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:modifiedOn": 1473274836,
    "stdout": "",
    "description": "",
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "id": "#fend_object_hdf5",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
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
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "dockerImageId": ""
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam1",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam2",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 4,
                "separate": false
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "sbg:fileTypes": "BED",
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:latestRevision": 0,
    "label": "hictool-bam2hdf5",
    "successCodes": [],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:sbgMaintained": false,
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:projectName": "Dev",
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:createdOn": 1473274836,
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836
        }
    ],
    "sbg:revision": 0,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:job": {
        "inputs": {
            "input_bam1": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_bam1.bam",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
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
            }
        },
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        }
    },
    "baseCommand": [
        "run.sh"
    ]
}