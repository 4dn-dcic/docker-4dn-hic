{
    "sbg:latestRevision": 0,
    "sbg:modifiedOn": 1473274839,
    "successCodes": [],
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:sbgMaintained": false,
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "class": "Expression"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "class": "Expression"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "class": "Expression"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "class": "Expression"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "class": "Expression"
                }
            }
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274839,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "sbg:contributors": [
        "duplexa"
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
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:createdOn": 1473274839,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        },
        "inputs": {
            "HiC_data_object_hdf5": {
                "size": 0,
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "fend_object_hdf5": {
                "size": 0,
                "path": "/path/to/fend_object_hdf5.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "output_dir": "output_dir",
            "contact_matrix_binsize": 0,
            "chromosome": "chromosome",
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "chrlen_file": {
                "size": 0,
                "path": "/path/to/chrlen_file.ext",
                "secondaryFiles": [],
                "class": "File"
            }
        }
    },
    "stdout": "",
    "inputs": [
        {
            "sbg:fileTypes": "HDF5",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
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
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "id": "#chromosome",
            "type": [
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "50000",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 5
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
                "position": 4
            },
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "temporaryFailCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:modifiedBy": "duplexa",
    "label": "hictool-hdf52matrix",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:revision": 0,
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement"
        }
    ],
    "stdin": ""
}