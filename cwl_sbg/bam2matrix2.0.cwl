{
    "sbg:createdOn": 1473274839,
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1473274839,
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274839
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "class": "CommandLineTool",
    "sbg:image_url": null,
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
            "type": [
                "string"
            ],
            "id": "#chromosome",
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:toolDefaultValue": "50000",
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "position": 5,
                "separate": false,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
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
            "id": "#chrlen_file",
            "inputBinding": {
                "position": 4,
                "separate": false,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:revision": 0,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#observed_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#expected_fend_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "stdout": "",
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
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "stdin": "",
    "sbg:sbgMaintained": false,
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
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "successCodes": [],
    "temporaryFailCodes": [],
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "label": "hictool-hdf52matrix",
    "sbg:job": {
        "inputs": {
            "HiC_norm_binning_hdf5": {
                "class": "File",
                "size": 0,
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "fend_object_hdf5": {
                "class": "File",
                "size": 0,
                "path": "/path/to/fend_object_hdf5.ext",
                "secondaryFiles": []
            },
            "contact_matrix_binsize": 0,
            "chrlen_file": {
                "class": "File",
                "size": 0,
                "path": "/path/to/chrlen_file.ext",
                "secondaryFiles": []
            },
            "HiC_data_object_hdf5": {
                "class": "File",
                "size": 0,
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "secondaryFiles": []
            },
            "chromosome": "chromosome"
        },
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        }
    },
    "arguments": [],
    "sbg:latestRevision": 0
}