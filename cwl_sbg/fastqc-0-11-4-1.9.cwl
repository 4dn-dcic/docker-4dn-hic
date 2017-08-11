{
    "steps": [
        {
            "run": {
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v32",
                        "dockerImageId": "759c4c8fbafd"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": ""
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": ""
                    }
                ],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:toolkit": "FastQC",
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "input_fastq": {
                            "path": "/path/to/input_fastq.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "threads": null,
                        "outdir": "outdir-string-value"
                    },
                    "allocatedResources": {
                        "cpu": "",
                        "mem": ""
                    }
                },
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1475785113,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
                    },
                    {
                        "sbg:modifiedOn": 1502312296,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
                    },
                    {
                        "sbg:modifiedOn": 1502312495,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "simplified arguments"
                    },
                    {
                        "sbg:modifiedOn": 1502312518,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "simplified output"
                    },
                    {
                        "sbg:modifiedOn": 1502313093,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1502318718,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control."
                    },
                    {
                        "sbg:modifiedOn": 1502318741,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:createdBy": "duplexa",
                "requirements": [],
                "stdin": "",
                "inputs": [
                    {
                        "sbg:category": "Options",
                        "type": [
                            "null",
                            "int"
                        ],
                        "label": "Threads",
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "1",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "id": "#threads",
                        "required": false
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "id": "#outdir",
                        "required": false
                    },
                    {
                        "sbg:category": "File inputs",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "label": "Input file",
                        "description": "Input file.",
                        "inputBinding": {
                            "itemSeparator": null,
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq",
                        "required": true
                    }
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "y": 166,
                "sbg:createdOn": 1475785113,
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:toolkitVersion": "0.11.5",
                "sbg:links": [
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/",
                        "label": "Homepage"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4_source.zip",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://wiki.hpcc.msu.edu/display/Bioinfo/FastQC+Tutorial",
                        "label": "Wiki"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip",
                        "label": "Download"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc",
                        "label": "Publication"
                    }
                ],
                "sbg:image_url": null,
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "cwlVersion": "sbg:draft-2",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:latestRevision": 6,
                "stdout": "",
                "arguments": [],
                "successCodes": [],
                "sbg:revision": 6,
                "sbg:projectName": "Dev",
                "x": 455,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:modifiedOn": 1502318741,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*_fastqc.zip",
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            }
                        },
                        "sbg:fileTypes": "ZIP",
                        "label": "Report zip",
                        "description": "Zip archive of the report.",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#report_zip"
                    }
                ],
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "label": "FastQC",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ]
            },
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "inputs": [
                {
                    "source": [
                        "#threads"
                    ],
                    "id": "#FastQC.threads"
                },
                {
                    "id": "#FastQC.outdir",
                    "default": "."
                },
                {
                    "source": [
                        "#input_fastq"
                    ],
                    "id": "#FastQC.input_fastq"
                }
            ],
            "sbg:y": 166,
            "id": "#FastQC",
            "sbg:x": 455
        }
    ],
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:canvas_zoom": 1,
    "sbg:modifiedBy": "4dn-dcic",
    "hints": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:revision": 9,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785156,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1475785232,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1494861916,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed"
        },
        {
            "sbg:modifiedOn": 1494861985,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": "scattered across input_fastq"
        },
        {
            "sbg:modifiedOn": 1502312053,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": "removed scatter across input_fastq"
        },
        {
            "sbg:modifiedOn": 1502312569,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:modifiedOn": 1502313267,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:revisionNotes": "removed expression requirement"
        },
        {
            "sbg:modifiedOn": 1502314283,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:revisionNotes": "updated input_fastq, no longer an array."
        },
        {
            "sbg:modifiedOn": 1502318802,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control"
        },
        {
            "sbg:modifiedOn": 1502373121,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1502390177,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "outputs": [
        {
            "sbg:fileTypes": "ZIP",
            "label": "report_zip",
            "sbg:includeInPorts": true,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#FastQC.report_zip"
            ],
            "sbg:y": 170,
            "id": "#report_zip",
            "sbg:x": 870
        }
    ],
    "class": "Workflow",
    "sbg:canvas_x": 40,
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_fastq",
            "type": [
                "File"
            ],
            "sbg:y": 206,
            "id": "#input_fastq",
            "sbg:x": 14
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:category": "Options",
            "sbg:suggestedValue": null,
            "label": "Threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:includeInPorts": false,
            "sbg:toolDefaultValue": "1",
            "id": "#threads",
            "required": false
        }
    ],
    "sbg:createdOn": 1475785156,
    "description": "",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": 13,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:modifiedOn": 1502373121,
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "label": "fastqc-0.11.4",
    "sbg:latestRevision": 10
}