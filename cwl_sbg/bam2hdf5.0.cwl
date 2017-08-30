{
    "sbg:createdOn": 1473274836,
    "sbg:validationErrors": [],
    "successCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "stdin": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "description": "",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "label": "hictool-bam2hdf5",
    "stdout": "",
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:image_url": null,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:job": {
        "inputs": {
            "input_bam2": {
                "size": 0,
                "path": "/path/to/input_bam2.bam",
                "class": "File",
                "secondaryFiles": []
            },
            "RE_bed": {
                "size": 0,
                "path": "/path/to/RE_bed.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "input_bam1": {
                "size": 0,
                "path": "/path/to/input_bam1.bam",
                "class": "File",
                "secondaryFiles": []
            },
            "output_dir": "output_dir"
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
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
            "dockerPull": "duplexa/hictool-bam2hdf5:v2",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "arguments": [],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "type": [
                "File"
            ],
            "id": "#input_bam1"
        },
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "type": [
                "File"
            ],
            "id": "#input_bam2"
        },
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "sbg:fileTypes": "BED",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1473274836,
    "sbg:revision": 0,
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274836,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4"
        }
    ]
}