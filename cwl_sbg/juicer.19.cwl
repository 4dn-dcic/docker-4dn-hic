{
    "requirements": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#bwaIndex"
        },
        {
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#reference_fasta"
        },
        {
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file"
        },
        {
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#restriction_file"
        },
        {
            "inputBinding": {
                "position": 8,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "\".\"",
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir"
        },
        {
            "inputBinding": {
                "position": 7,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        }
    ],
    "sbg:cmdPreview": "run-juicer.sh",
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1500054207,
    "sbg:modifiedBy": "4dn-dcic",
    "baseCommand": [
        "run-juicer.sh"
    ],
    "class": "CommandLineTool",
    "sbg:revision": 19,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495727497,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495727990,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495730389,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495737299,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495811058,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495813279,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495813869,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496430760,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497023661,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497279074,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497286447,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497296603,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497473471,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497641646,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497643637,
            "sbg:revision": 14
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497645323,
            "sbg:revision": 15
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497982864,
            "sbg:revision": 16
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498164917,
            "sbg:revision": 17
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499287064,
            "sbg:revision": 18
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054207,
            "sbg:revision": 19
        }
    ],
    "hints": [
        {
            "value": 8,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 12000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "stdin": "",
    "sbg:job": {
        "inputs": {
            "chromsizes_file": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/chromsizes_file.ext"
            },
            "bwaIndex": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/bwaIndex.ext"
            },
            "restriction_file": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/restriction_file.ext"
            },
            "reference_fasta": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/reference_fasta.ext"
            },
            "ncores": 6,
            "input_fastq1": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq1.ext"
            },
            "input_fastq2": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq2.ext"
            },
            "outdir": "outdir-string-value"
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 12000
        }
    },
    "label": "juicer",
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 19,
    "arguments": [],
    "sbg:createdOn": 1495727497,
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/juicer/19/raw/",
    "successCodes": [],
    "sbg:createdBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/juicer/19",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#merged_nodups",
            "outputBinding": {
                "glob": "$job.inputs.outdir + '/data_dir/aligned/merged_nodups.txt'"
            }
        }
    ],
    "stdout": ""
}