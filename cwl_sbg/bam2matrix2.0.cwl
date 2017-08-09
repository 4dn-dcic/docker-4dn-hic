{
    "sbg:revision": 0,
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:image_url": null,
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "class": "Expression"
                }
            }
        }
    ],
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "HiC_norm_binning_hdf5": {
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "chrlen_file": {
                "path": "/path/to/chrlen_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "contact_matrix_binsize": 0,
            "HiC_data_object_hdf5": {
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "fend_object_hdf5": {
                "path": "/path/to/fend_object_hdf5.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "chromosome": "chromosome"
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run.sh"
    ],
    "successCodes": [],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:createdOn": 1473274839,
    "arguments": [],
    "sbg:modifiedOn": 1473274839,
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 0,
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "description": "",
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "type": [
                "File"
            ],
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "type": [
                "string"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "type": [
                "int"
            ],
            "sbg:toolDefaultValue": "50000"
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 5,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "separate": false
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#chrlen_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "stdin": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839
        }
    ],
    "temporaryFailCodes": [],
    "label": "hictool-hdf52matrix"
}