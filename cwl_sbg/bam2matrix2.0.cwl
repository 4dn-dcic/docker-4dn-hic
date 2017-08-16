{
    "sbg:project": "4dn-dcic/dev",
    "label": "hictool-hdf52matrix",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "successCodes": [],
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1473274839,
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274839,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:revision": 0
        }
    ],
    "sbg:latestRevision": 0,
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
            "dockerPull": "duplexa/hictool-hdf52matrix:v2",
            "dockerImageId": ""
        }
    ],
    "sbg:revision": 0,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        },
        "inputs": {
            "fend_object_hdf5": {
                "size": 0,
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "HiC_data_object_hdf5": {
                "size": 0,
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "chrlen_file": {
                "size": 0,
                "path": "/path/to/chrlen_file.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "contact_matrix_binsize": 0,
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "chromosome": "chromosome"
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdOn": 1473274839,
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "sbg:fileTypes": "HDF5",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
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
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            }
        },
        {
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ],
            "sbg:toolDefaultValue": "50000",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            }
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "separate": false,
                "position": 5
            }
        },
        {
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            }
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "stdout": "",
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0"
}