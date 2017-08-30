{
    "sbg:validationErrors": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "HiC_data_object_hdf5": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/HiC_data_object_hdf5.ext"
            },
            "fend_object_hdf5": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/fend_object_hdf5.ext"
            },
            "contact_matrix_binsize": 0,
            "chrlen_file": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chrlen_file.ext"
            },
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/HiC_norm_binning_hdf5.ext"
            },
            "output_dir": "output_dir",
            "chromosome": "chromosome"
        }
    },
    "sbg:createdOn": 1473274839,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#observed_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#expected_fend_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274839,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7"
        }
    ],
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 8
        },
        {
            "class": "sbg:MemRequirement",
            "value": 8000
        },
        {
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "arguments": [],
    "successCodes": [],
    "sbg:revision": 0,
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "label": "hictool-hdf52matrix",
    "sbg:project": "4dn-dcic/dev",
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 0,
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:modifiedOn": 1473274839,
    "temporaryFailCodes": [],
    "stdout": "",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "HDF5",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            },
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_data_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "HDF5",
            "id": "#fend_object_hdf5"
        },
        {
            "type": [
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "id": "#chromosome"
        },
        {
            "type": [
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 5
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            },
            "id": "#chrlen_file"
        }
    ],
    "sbg:sbgMaintained": false
}