{
    "sbg:modifiedOn": 1473274839,
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
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
    "sbg:revision": 0,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274839,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 0,
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "sbg:fileTypes": "HDF5",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#HiC_data_object_hdf5",
            "sbg:fileTypes": "HDF5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#fend_object_hdf5",
            "sbg:fileTypes": "HDF5",
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
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            }
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "50000",
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize"
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 4,
                "separate": false,
                "sbg:cmdInclude": true
            }
        }
    ],
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "label": "hictool-hdf52matrix",
    "successCodes": [],
    "description": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "temporaryFailCodes": [],
    "sbg:createdBy": "duplexa",
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
    "baseCommand": [
        "run.sh"
    ],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File"
            },
            "chrlen_file": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/chrlen_file.ext",
                "class": "File"
            },
            "fend_object_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File"
            },
            "output_dir": "output_dir",
            "chromosome": "chromosome",
            "HiC_data_object_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File"
            },
            "contact_matrix_binsize": 0
        }
    },
    "arguments": [],
    "sbg:validationErrors": [],
    "sbg:createdOn": 1473274839,
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
                }
            }
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            }
        }
    ]
}