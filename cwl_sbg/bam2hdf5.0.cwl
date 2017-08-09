{
    "sbg:modifiedBy": "duplexa",
    "sbg:createdOn": 1473274836,
    "sbg:image_url": null,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
            "sbg:modifiedOn": 1473274836,
            "sbg:revision": 0
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1473274836,
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#input_bam1",
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
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
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": false,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#RE_bed",
            "sbg:fileTypes": "BED"
        }
    ],
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2hdf5/4",
    "sbg:createdBy": "duplexa",
    "successCodes": [],
    "outputs": [
        {
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
            ],
            "id": "#fend_object_hdf5"
        },
        {
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
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
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
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
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
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
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
            ],
            "id": "#HiC_project_object_hdf5"
        }
    ],
    "sbg:revision": 0,
    "class": "CommandLineTool",
    "stdin": "",
    "sbg:job": {
        "inputs": {
            "RE_bed": {
                "size": 0,
                "path": "/path/to/RE_bed.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "input_bam2": {
                "size": 0,
                "path": "/path/to/input_bam2.bam",
                "secondaryFiles": [],
                "class": "File"
            },
            "input_bam1": {
                "size": 0,
                "path": "/path/to/input_bam1.bam",
                "secondaryFiles": [],
                "class": "File"
            },
            "output_dir": "output_dir"
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "label": "hictool-bam2hdf5",
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
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
    "description": "",
    "temporaryFailCodes": [],
    "arguments": [],
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-bam2hdf5:v2"
        }
    ],
    "sbg:id": "4dn-dcic/dev/bam2hdf5/0",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
    "sbg:copyOf": "gaurav/4dn/bam2hdf5/4",
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2hdf5/0/raw/",
    "sbg:latestRevision": 0
}