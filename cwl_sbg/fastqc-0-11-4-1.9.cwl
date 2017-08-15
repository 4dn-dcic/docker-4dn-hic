{
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic",
    "inputs": [
        {
            "sbg:y": 206,
            "type": [
                "File"
            ],
            "label": "input_fastq",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_fastq",
            "sbg:x": 14
        },
        {
            "required": false,
            "sbg:suggestedValue": null,
            "sbg:includeInPorts": false,
            "sbg:category": "Options",
            "type": [
                "null",
                "int"
            ],
            "label": "Threads",
            "sbg:toolDefaultValue": "1",
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 40,
    "description": "",
    "sbg:revision": 9,
    "steps": [
        {
            "sbg:y": 166,
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:toolkit": "FastQC",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:modifiedBy": "4dn-dcic",
                "successCodes": [],
                "stdin": "",
                "stdout": "",
                "inputs": [
                    {
                        "required": false,
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:includeInPorts": false,
                        "sbg:category": "Options",
                        "type": [
                            "null",
                            "int"
                        ],
                        "label": "Threads",
                        "sbg:toolDefaultValue": "1",
                        "id": "#threads"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "required": true,
                        "description": "Input file.",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": null
                        },
                        "sbg:category": "File inputs",
                        "type": [
                            "File"
                        ],
                        "label": "Input file",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "id": "#input_fastq"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "input_fastq": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq.ext",
                            "size": 0
                        },
                        "outdir": "outdir-string-value",
                        "threads": null
                    },
                    "allocatedResources": {
                        "cpu": "",
                        "mem": ""
                    }
                },
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:revision": 6,
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "arguments": [],
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "class": "CommandLineTool",
                "outputs": [
                    {
                        "description": "Zip archive of the report.",
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Report zip",
                        "sbg:fileTypes": "ZIP",
                        "id": "#report_zip"
                    }
                ],
                "requirements": [],
                "sbg:projectName": "Dev",
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:toolkitVersion": "0.11.5",
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:createdBy": "duplexa",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revisionNotes": "simplified arguments"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revisionNotes": "simplified output"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control."
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revisionNotes": null
                    }
                ],
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "759c4c8fbafd",
                        "dockerPull": "duplexa/4dn-hic:v32"
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
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/"
                    },
                    {
                        "label": "Source Code",
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4_source.zip"
                    },
                    {
                        "label": "Wiki",
                        "id": "https://wiki.hpcc.msu.edu/display/Bioinfo/FastQC+Tutorial"
                    },
                    {
                        "label": "Download",
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip"
                    },
                    {
                        "label": "Publication",
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc"
                    }
                ],
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:createdOn": 1475785113,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1502318741,
                "x": 455,
                "sbg:image_url": null,
                "y": 166,
                "label": "FastQC",
                "sbg:latestRevision": 6,
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:validationErrors": []
            },
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "id": "#FastQC",
            "sbg:x": 455,
            "inputs": [
                {
                    "source": [
                        "#threads"
                    ],
                    "id": "#FastQC.threads"
                },
                {
                    "default": ".",
                    "id": "#FastQC.outdir"
                },
                {
                    "source": [
                        "#input_fastq"
                    ],
                    "id": "#FastQC.input_fastq"
                }
            ]
        }
    ],
    "class": "Workflow",
    "outputs": [
        {
            "required": false,
            "sbg:includeInPorts": true,
            "source": [
                "#FastQC.report_zip"
            ],
            "sbg:y": 170,
            "type": [
                "null",
                "File"
            ],
            "label": "report_zip",
            "sbg:fileTypes": "ZIP",
            "id": "#report_zip",
            "sbg:x": 870
        }
    ],
    "requirements": [],
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:latestRevision": 10,
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1475785156,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1475785232,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494861916,
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494861985,
            "sbg:revisionNotes": "scattered across input_fastq"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502312053,
            "sbg:revisionNotes": "removed scatter across input_fastq"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502312569,
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502313267,
            "sbg:revisionNotes": "removed expression requirement"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1502314283,
            "sbg:revisionNotes": "updated input_fastq, no longer an array."
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1502318802,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1502373121,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1502390177,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:canvas_y": 13,
    "hints": [],
    "sbg:createdOn": 1475785156,
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1502373121,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "label": "fastqc-0.11.4",
    "sbg:canvas_zoom": 1,
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:validationErrors": []
}