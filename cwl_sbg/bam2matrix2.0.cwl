{
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274839,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:revision": 0
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "temporaryFailCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
    "description": "",
    "stdin": "",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                }
            },
            "id": "#expected_enrich_contact_matrix"
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
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
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "id": "#chromosome"
        },
        {
            "type": [
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "id": "#contact_matrix_binsize",
            "sbg:toolDefaultValue": "50000"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 5
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            },
            "id": "#chrlen_file"
        }
    ],
    "successCodes": [],
    "sbg:modifiedOn": 1473274839,
    "sbg:image_url": null,
    "sbg:createdOn": 1473274839,
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
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "label": "hictool-hdf52matrix",
    "sbg:latestRevision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "contact_matrix_binsize": 0,
            "fend_object_hdf5": {
                "size": 0,
                "class": "File",
                "path": "/path/to/fend_object_hdf5.ext",
                "secondaryFiles": []
            },
            "chrlen_file": {
                "size": 0,
                "class": "File",
                "path": "/path/to/chrlen_file.ext",
                "secondaryFiles": []
            },
            "chromosome": "chromosome",
            "HiC_data_object_hdf5": {
                "size": 0,
                "class": "File",
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "secondaryFiles": []
            },
            "HiC_norm_binning_hdf5": {
                "size": 0,
                "class": "File",
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "arguments": [],
    "sbg:revision": 0,
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev"
}