{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_fastq1",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "id": "#input_fastq2",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            },
            "id": "#bwaIndex",
            "sbg:fileTypes": "BWAINDEX.TGZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 4
            },
            "id": "#reference_fasta",
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 5
            },
            "id": "#chromsizes_file"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 6
            },
            "id": "#restriction_file"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 8
            },
            "sbg:toolDefaultValue": ".",
            "id": "#outdir"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 7
            },
            "sbg:toolDefaultValue": "8",
            "id": "#ncores",
            "sbg:stageInput": null
        }
    ],
    "requirements": [],
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1504210947,
    "sbg:createdBy": "4dn-dcic",
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run-juicer.sh"
    ],
    "sbg:latestRevision": 20,
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$job.inputs.outdir + '/data_dir/aligned/merged_nodups.txt'"
            },
            "id": "#merged_nodups"
        }
    ],
    "successCodes": [],
    "sbg:revision": 20,
    "stdout": "",
    "sbg:cmdPreview": "run-juicer.sh",
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
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        }
    ],
    "label": "juicer",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495727497,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495727990,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495730389,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495737299,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495811058,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495813279,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495813869,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496430760,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497023661,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497279074,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497286447,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497296603,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497473471,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497641646,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497643637,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497645323,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 16,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497982864,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498164917,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499287064,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 19,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054207,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 20,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1504210947,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:job": {
        "inputs": {
            "outdir": "outdir-string-value",
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "input_fastq1": {
                "path": "/path/to/input_fastq1.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "input_fastq2": {
                "path": "/path/to/input_fastq2.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "ncores": 6,
            "restriction_file": {
                "path": "/path/to/restriction_file.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "reference_fasta": {
                "path": "/path/to/reference_fasta.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "bwaIndex": {
                "path": "/path/to/bwaIndex.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 12000
        }
    },
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:id": "4dn-dcic/dev/juicer/20",
    "sbg:createdOn": 1495727497,
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/juicer/20/raw/",
    "arguments": []
}