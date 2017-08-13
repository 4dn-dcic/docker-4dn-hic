{
    "sbg:image_url": null,
    "stdin": "",
    "sbg:modifiedBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "sbg:revision": 0,
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "temporaryFailCodes": [],
    "sbg:job": {
        "inputs": {
            "fend_object_hdf5": {
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "chromosome": "chromosome",
            "HiC_data_object_hdf5": {
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "chrlen_file": {
                "path": "/path/to/chrlen_file.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "contact_matrix_binsize": 0,
            "HiC_norm_binning_hdf5": {
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "output_dir": "output_dir"
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "class": "CommandLineTool",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:validationErrors": [],
    "description": "",
    "sbg:createdOn": 1473274839,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274839,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:revision": 0
        }
    ],
    "successCodes": [],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1473274839,
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "HDF5",
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
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "string"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "sbg:toolDefaultValue": "50000",
            "type": [
                "int"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "position": 5
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#chrlen_file",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "label": "hictool-hdf52matrix",
    "sbg:latestRevision": 0,
    "arguments": []
}