{
    "sbg:revision": 0,
    "temporaryFailCodes": [],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "class": "CommandLineTool",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "label": "hictool-hdf52matrix",
    "hints": [
        {
            "value": 8,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 8000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "successCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "arguments": [],
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "chrlen_file": {
                "path": "/path/to/chrlen_file.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "chromosome": "chromosome",
            "output_dir": "output_dir",
            "HiC_data_object_hdf5": {
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "contact_matrix_binsize": 0,
            "HiC_norm_binning_hdf5": {
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "fend_object_hdf5": {
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "sbg:modifiedOn": 1473274839,
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274839
        }
    ],
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "sbg:fileTypes": "HDF5",
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "HDF5",
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#chromosome",
            "type": [
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "50000",
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "position": 5,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:image_url": null,
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1473274839,
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "description": "",
    "sbg:latestRevision": 0
}