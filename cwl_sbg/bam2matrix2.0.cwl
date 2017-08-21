{
    "label": "hictool-hdf52matrix",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        },
        "inputs": {
            "HiC_norm_binning_hdf5": {
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "chromosome": "chromosome",
            "contact_matrix_binsize": 0,
            "output_dir": "output_dir",
            "chrlen_file": {
                "path": "/path/to/chrlen_file.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "fend_object_hdf5": {
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "HiC_data_object_hdf5": {
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            }
        }
    },
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "dockerImageId": ""
        }
    ],
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "HDF5",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
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
            "id": "#chromosome",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "int"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 5
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#chrlen_file",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:revision": 0,
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
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
    "description": "",
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "sbg:modifiedOn": 1473274839,
    "successCodes": [],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "temporaryFailCodes": [],
    "arguments": [],
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "stdin": "",
    "class": "CommandLineTool",
    "sbg:createdOn": 1473274839,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "stdout": "",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274839,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0"
}