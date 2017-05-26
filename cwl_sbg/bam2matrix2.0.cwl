{
    "stdin": "",
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
    "sbg:projectName": "Dev",
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "cwlVersion": "sbg:draft-2",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "chromosome": "chromosome",
            "contact_matrix_binsize": 0,
            "output_dir": "output_dir",
            "chrlen_file": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/chrlen_file.ext",
                "size": 0
            },
            "HiC_data_object_hdf5": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "size": 0
            },
            "HiC_norm_binning_hdf5": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "size": 0
            },
            "fend_object_hdf5": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/fend_object_hdf5.ext",
                "size": 0
            }
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "description": "",
    "sbg:revision": 0,
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839,
            "sbg:revision": 0
        }
    ],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "label": "hictool-hdf52matrix",
    "sbg:modifiedOn": 1473274839,
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "class": "Expression"
                }
            },
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "sbg:createdOn": 1473274839,
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
    "inputs": [
        {
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            }
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
            "id": "#chromosome",
            "type": [
                "string"
            ],
            "inputBinding": {
                "separate": false,
                "position": 2,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ],
            "inputBinding": {
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": false,
                "position": 5,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 4,
                "sbg:cmdInclude": true
            }
        }
    ],
    "successCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": []
}