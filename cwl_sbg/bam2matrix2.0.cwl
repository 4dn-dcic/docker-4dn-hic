{
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:revision": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "label": "hictool-hdf52matrix",
    "sbg:project": "4dn-dcic/dev",
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
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "sbg:modifiedOn": 1473274839,
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "stdout": "",
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
    "arguments": [],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "cwlVersion": "sbg:draft-2",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdBy": "duplexa",
    "successCodes": [],
    "sbg:createdOn": 1473274839,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "description": "",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "HDF5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5",
            "sbg:fileTypes": "HDF5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "sbg:fileTypes": "HDF5"
        },
        {
            "type": [
                "string"
            ],
            "id": "#chromosome",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            }
        },
        {
            "type": [
                "int"
            ],
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 5,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4
            }
        }
    ],
    "temporaryFailCodes": [],
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
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "chrlen_file": {
                "path": "/path/to/chrlen_file.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "HiC_norm_binning_hdf5": {
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "fend_object_hdf5": {
                "path": "/path/to/fend_object_hdf5.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "HiC_data_object_hdf5": {
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "chromosome": "chromosome",
            "output_dir": "output_dir",
            "contact_matrix_binsize": 0
        }
    },
    "sbg:modifiedBy": "duplexa"
}