{
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:revision": 0,
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
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
    "sbg:latestRevision": 0,
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "stdin": "",
    "sbg:modifiedBy": "duplexa",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            }
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "sbg:job": {
        "inputs": {
            "HiC_data_object_hdf5": {
                "secondaryFiles": [],
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File",
                "size": 0
            },
            "output_dir": "output_dir",
            "chrlen_file": {
                "secondaryFiles": [],
                "path": "/path/to/chrlen_file.ext",
                "class": "File",
                "size": 0
            },
            "fend_object_hdf5": {
                "secondaryFiles": [],
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File",
                "size": 0
            },
            "chromosome": "chromosome",
            "HiC_norm_binning_hdf5": {
                "secondaryFiles": [],
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File",
                "size": 0
            },
            "contact_matrix_binsize": 0
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "baseCommand": [
        "run.sh"
    ],
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:modifiedOn": 1473274839,
    "sbg:createdOn": 1473274839,
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
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
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            }
        },
        {
            "sbg:toolDefaultValue": "50000",
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
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
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 5
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            }
        }
    ],
    "description": "",
    "class": "CommandLineTool",
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "label": "hictool-hdf52matrix",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274839
        }
    ],
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
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
    "sbg:project": "4dn-dcic/dev"
}