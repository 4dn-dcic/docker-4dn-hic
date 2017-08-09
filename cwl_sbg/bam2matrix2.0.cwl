{
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "label": "hictool-hdf52matrix",
    "sbg:modifiedBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            },
            "type": [
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "type": [
                "string"
            ],
            "id": "#chromosome"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "type": [
                "int"
            ],
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 5,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "baseCommand": [
        "run.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        },
        "inputs": {
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/HiC_norm_binning_hdf5.ext"
            },
            "HiC_data_object_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/HiC_data_object_hdf5.ext"
            },
            "chrlen_file": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/chrlen_file.ext"
            },
            "chromosome": "chromosome",
            "contact_matrix_binsize": 0,
            "fend_object_hdf5": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/fend_object_hdf5.ext"
            },
            "output_dir": "output_dir"
        }
    },
    "temporaryFailCodes": [],
    "stdout": "",
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
    "sbg:modifiedOn": 1473274839,
    "sbg:sbgMaintained": false,
    "stdin": "",
    "sbg:revision": 0,
    "successCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "arguments": [],
    "sbg:image_url": null,
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274839
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1473274839,
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
    "description": ""
}