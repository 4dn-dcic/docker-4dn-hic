{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "sbg:fileTypes": "HDF5",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "type": [
                "File"
            ]
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "type": [
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "type": [
                "int"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 5,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "separate": false
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#chrlen_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "sbg:revision": 0,
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "sbg:modifiedOn": 1473274839,
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "stdin": "",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "class": "CommandLineTool",
    "label": "hictool-hdf52matrix",
    "arguments": [],
    "description": "",
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839
        }
    ],
    "sbg:job": {
        "inputs": {
            "chromosome": "chromosome",
            "contact_matrix_binsize": 0,
            "HiC_norm_binning_hdf5": {
                "class": "File",
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "chrlen_file": {
                "class": "File",
                "path": "/path/to/chrlen_file.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "fend_object_hdf5": {
                "class": "File",
                "path": "/path/to/fend_object_hdf5.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "HiC_data_object_hdf5": {
                "class": "File",
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "size": 0,
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "sbg:createdOn": 1473274839,
    "successCodes": [],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            },
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:image_url": null
}