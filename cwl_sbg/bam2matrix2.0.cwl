{
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_data_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "HDF5",
            "id": "#fend_object_hdf5"
        },
        {
            "type": [
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
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
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "separate": false,
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
                "position": 4,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#chrlen_file"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "sbg:createdOn": 1473274839,
    "cwlVersion": "sbg:draft-2",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:validationErrors": [],
    "arguments": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:modifiedOn": 1473274839,
    "label": "hictool-hdf52matrix",
    "sbg:latestRevision": 0,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "duplexa",
    "description": "",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "contact_matrix_binsize": 0,
            "chrlen_file": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chrlen_file.ext",
                "size": 0
            },
            "output_dir": "output_dir",
            "chromosome": "chromosome",
            "HiC_data_object_hdf5": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "size": 0
            },
            "fend_object_hdf5": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/fend_object_hdf5.ext",
                "size": 0
            },
            "HiC_norm_binning_hdf5": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "size": 0
            }
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "successCodes": [],
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
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
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:revision": 0
}