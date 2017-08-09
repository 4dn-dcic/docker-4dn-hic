{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "stdout": "",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "sbg:fileTypes": "HDF5",
            "type": [
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5"
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "type": [
                "string"
            ],
            "id": "#chromosome"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ],
            "sbg:toolDefaultValue": "50000"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 5,
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
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        }
    ],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:createdOn": 1473274839,
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
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "class": "DockerRequirement"
        }
    ],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "output_dir": "output_dir",
            "HiC_data_object_hdf5": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File"
            },
            "chrlen_file": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/chrlen_file.ext",
                "class": "File"
            },
            "contact_matrix_binsize": 0,
            "HiC_norm_binning_hdf5": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File"
            },
            "chromosome": "chromosome",
            "fend_object_hdf5": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File"
            }
        }
    },
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "arguments": [],
    "label": "hictool-hdf52matrix",
    "sbg:latestRevision": 0,
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1473274839,
    "class": "CommandLineTool",
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
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:revision": 0,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839
        }
    ],
    "temporaryFailCodes": [],
    "successCodes": [],
    "outputs": [
        {
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
            ],
            "id": "#observed_contact_matrix"
        },
        {
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
            ],
            "id": "#normalized_fend_contact_matrix"
        },
        {
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
            ],
            "id": "#normalized_enrich_contact_matrix"
        },
        {
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
            ],
            "id": "#expected_fend_contact_matrix"
        },
        {
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
            ],
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "description": "",
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev"
}