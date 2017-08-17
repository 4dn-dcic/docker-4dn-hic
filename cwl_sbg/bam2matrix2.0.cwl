{
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "id": "#observed_contact_matrix",
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
            ]
        },
        {
            "id": "#normalized_fend_contact_matrix",
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
            ]
        },
        {
            "id": "#normalized_enrich_contact_matrix",
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
            ]
        },
        {
            "id": "#expected_fend_contact_matrix",
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
            ]
        },
        {
            "id": "#expected_enrich_contact_matrix",
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
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
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
    "label": "hictool-hdf52matrix",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "class": "CommandLineTool",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839,
            "sbg:revision": 0
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revision": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "id": "#HiC_norm_binning_hdf5",
            "sbg:fileTypes": "HDF5",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
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
                "separate": false,
                "position": 2
            },
            "type": [
                "string"
            ]
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": false,
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
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1473274839,
    "successCodes": [],
    "description": "",
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "HiC_data_object_hdf5": {
                "size": 0,
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "fend_object_hdf5": {
                "size": 0,
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "chromosome": "chromosome",
            "chrlen_file": {
                "size": 0,
                "path": "/path/to/chrlen_file.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "contact_matrix_binsize": 0
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "arguments": [],
    "sbg:image_url": null,
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1473274839
}