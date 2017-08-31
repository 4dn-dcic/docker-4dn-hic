{
    "sbg:revision": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
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
            },
            "contact_matrix_binsize": 0,
            "fend_object_hdf5": {
                "size": 0,
                "path": "/path/to/fend_object_hdf5.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "HiC_data_object_hdf5": {
                "size": 0,
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "output_dir": "output_dir"
        }
    },
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
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274839,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7"
        }
    ],
    "sbg:image_url": null,
    "stdout": "",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "stdin": "",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:createdOn": 1473274839,
    "sbg:modifiedOn": 1473274839,
    "description": "",
    "sbg:modifiedBy": "duplexa",
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
    "temporaryFailCodes": [],
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "inputs": [
        {
            "sbg:fileTypes": "HDF5",
            "type": [
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:fileTypes": "HDF5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "sbg:fileTypes": "HDF5",
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "string"
            ],
            "id": "#chromosome"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "sbg:toolDefaultValue": "50000"
        },
        {
            "inputBinding": {
                "position": 5,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        }
    ],
    "label": "hictool-hdf52matrix",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false
}