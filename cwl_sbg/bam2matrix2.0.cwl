{
    "sbg:modifiedBy": "duplexa",
    "sbg:latestRevision": 0,
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_norm_binning_hdf5"
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
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "string"
            ],
            "id": "#chromosome"
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "int"
            ],
            "sbg:toolDefaultValue": "50000",
            "id": "#contact_matrix_binsize"
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        }
    ],
    "class": "CommandLineTool",
    "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
    "stdout": "",
    "sbg:modifiedOn": 1473274839,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2matrix2/0/raw/",
    "sbg:copyOf": "gaurav/4dn/bam2matrix2/7",
    "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
    "label": "hictool-hdf52matrix",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix2/7",
            "sbg:modifiedOn": 1473274839
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
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:job": {
        "inputs": {
            "chromosome": "chromosome",
            "chrlen_file": {
                "path": "/path/to/chrlen_file.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "HiC_data_object_hdf5": {
                "path": "/path/to/HiC_data_object_hdf5.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "contact_matrix_binsize": 0,
            "fend_object_hdf5": {
                "path": "/path/to/fend_object_hdf5.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "HiC_norm_binning_hdf5": {
                "path": "/path/to/HiC_norm_binning_hdf5.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "output_dir": "output_dir"
        },
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        }
    },
    "sbg:revision": 0,
    "sbg:image_url": null,
    "sbg:id": "4dn-dcic/dev/bam2matrix2/0",
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-hdf52matrix:v2"
        }
    ],
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
    "description": "",
    "sbg:createdOn": 1473274839,
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:projectName": "Dev",
    "stdin": "",
    "successCodes": [],
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
    ]
}