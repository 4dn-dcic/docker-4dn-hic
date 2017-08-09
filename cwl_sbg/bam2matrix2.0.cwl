{
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "successCodes": [],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "id": "#HiC_norm_binning_hdf5",
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
            "inputBinding": {
                "separate": false,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "id": "#chromosome"
        },
        {
            "sbg:toolDefaultValue": "50000",
            "type": [
                "int"
            ],
            "inputBinding": {
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "id": "#contact_matrix_binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "position": 5,
                "sbg:cmdInclude": true
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "id": "#chrlen_file"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 0,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "label": "hictool-hdf52matrix",
    "sbg:createdOn": 1473274839,
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        },
        "inputs": {
            "contact_matrix_binsize": 0,
            "HiC_data_object_hdf5": {
                "class": "File",
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "fend_object_hdf5": {
                "class": "File",
                "path": "/path/to/fend_object_hdf5.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "chromosome": "chromosome",
            "chrlen_file": {
                "class": "File",
                "path": "/path/to/chrlen_file.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "HiC_norm_binning_hdf5": {
                "class": "File",
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            }
        }
    ],
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
    "stdin": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:modifiedBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 0,
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "arguments": [],
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
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "sbg:validationErrors": [],
    "description": "",
    "sbg:modifiedOn": 1473274839,
    "sbg:image_url": null,
    "sbg:projectName": "Dev",
    "stdout": ""
}