{
    "sbg:createdOn": 1473274839,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 0,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "arguments": [],
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "sbg:modifiedOn": 1473274839,
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
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
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "description": "",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274839,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "label": "hictool-hdf52matrix",
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#expected_fend_contact_matrix",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "successCodes": [],
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
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "chromosome": "chromosome",
            "chrlen_file": {
                "path": "/path/to/chrlen_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "HiC_norm_binning_hdf5": {
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
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
            "contact_matrix_binsize": 0,
            "HiC_data_object_hdf5": {
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "output_dir": "output_dir"
        }
    },
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "stdout": "",
    "class": "CommandLineTool",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false,
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
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ],
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "50000"
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 5,
                "separate": false,
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
    ]
}