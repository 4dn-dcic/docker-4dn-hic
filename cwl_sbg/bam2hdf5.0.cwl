{
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:revision": 0,
    "successCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:modifiedOn": 1473274836,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274836,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "description": "",
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "stdin": "",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "stdout": "",
    "sbg:latestRevision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "output_dir": "output_dir",
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
            "input_bam2": {
                "path": "/path/to/input_bam2.bam",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "sbg:createdOn": 1473274836,
    "temporaryFailCodes": [],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            },
            "id": "#input_bam1",
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "id": "#input_bam2",
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
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
                "separate": false,
                "position": 3
            },
            "id": "#RE_bed",
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdBy": "duplexa",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
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
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
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
    "arguments": [],
    "label": "hictool-bam2hdf5",
    "sbg:projectName": "Dev",
    "class": "CommandLineTool",
    "sbg:project": "4dn-dcic/dev"
}