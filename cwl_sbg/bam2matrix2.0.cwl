{
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "HDF5"
        },
        {
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "HDF5"
        },
        {
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "HDF5"
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
            "id": "#contact_matrix_binsize",
            "sbg:toolDefaultValue": "50000",
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
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "class": "CommandLineTool",
    "stdin": "",
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "stdout": "",
    "sbg:sbgMaintained": false,
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "description": "",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:revision": 0,
    "sbg:projectName": "Dev",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "successCodes": [],
    "sbg:job": {
        "inputs": {
            "contact_matrix_binsize": 0,
            "output_dir": "output_dir",
            "HiC_data_object_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/HiC_data_object_hdf5.ext"
            },
            "chromosome": "chromosome",
            "fend_object_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/fend_object_hdf5.ext"
            },
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/HiC_norm_binning_hdf5.ext"
            },
            "chrlen_file": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/chrlen_file.ext"
            }
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274839,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:revision": 0
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1473274839,
    "label": "hictool-hdf52matrix",
    "sbg:latestRevision": 0,
    "sbg:createdOn": 1473274839,
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0"
}