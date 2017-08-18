{
    "sbg:job": {
        "inputs": {
            "fend_object_hdf5": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File"
            },
            "output_dir": "output_dir",
            "chrlen_file": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/chrlen_file.ext",
                "class": "File"
            },
            "contact_matrix_binsize": 0,
            "chromosome": "chromosome",
            "HiC_norm_binning_hdf5": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File"
            },
            "HiC_data_object_hdf5": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        }
    },
    "sbg:revision": 0,
    "sbg:createdOn": 1473274839,
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            },
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "temporaryFailCodes": [],
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:latestRevision": 0,
    "sbg:validationErrors": [],
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:modifiedOn": 1473274839,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "stdin": "",
    "sbg:image_url": null,
    "successCodes": [],
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "stdout": "",
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
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
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            }
        },
        {
            "id": "#contact_matrix_binsize",
            "sbg:toolDefaultValue": "50000",
            "type": [
                "int"
            ],
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
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
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
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839,
            "sbg:revision": 0
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "hictool-hdf52matrix",
    "arguments": []
}