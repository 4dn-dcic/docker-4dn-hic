{
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1475785156
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1475785232
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494861916
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494861985
        },
        {
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502312053
        },
        {
            "sbg:revisionNotes": "simplified arguments",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502312569
        },
        {
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502313267
        },
        {
            "sbg:revisionNotes": "updated input_fastq, no longer an array.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1502314283
        },
        {
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1502318802
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1502373121
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1502390177
        }
    ],
    "steps": [
        {
            "sbg:x": 455,
            "run": {
                "requirements": [],
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
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
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1475785113
                    },
                    {
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1502312296
                    },
                    {
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1502312495
                    },
                    {
                        "sbg:revisionNotes": "simplified output",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1502312518
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502313093
                    },
                    {
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1502318718
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1502318741
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1475785113,
                "outputs": [
                    {
                        "label": "Report zip",
                        "sbg:fileTypes": "ZIP",
                        "description": "Zip archive of the report.",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#report_zip",
                        "outputBinding": {
                            "glob": "*_fastqc.zip",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq"
                        }
                    }
                ],
                "sbg:modifiedOn": 1502318741,
                "sbg:job": {
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    },
                    "inputs": {
                        "input_fastq": {
                            "path": "/path/to/input_fastq.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "outdir": "outdir-string-value",
                        "threads": null
                    }
                },
                "stdin": "",
                "sbg:toolkit": "FastQC",
                "stdout": "",
                "sbg:license": "GNU General Public License v3.0 only",
                "class": "CommandLineTool",
                "sbg:revision": 6,
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:toolAuthor": "Babraham Institute",
                "label": "FastQC",
                "sbg:toolkitVersion": "0.11.5",
                "y": 166,
                "successCodes": [],
                "sbg:latestRevision": 6,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "x": 455,
                "arguments": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "temporaryFailCodes": [],
                "sbg:projectName": "Dev",
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:createdBy": "duplexa",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "hints": [
                    {
                        "dockerPull": "duplexa/4dn-hic:v32",
                        "class": "DockerRequirement",
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
                "sbg:validationErrors": [],
                "inputs": [
                    {
                        "required": false,
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "1",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "label": "Threads",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#threads",
                        "sbg:category": "Options"
                    },
                    {
                        "required": false,
                        "id": "#outdir",
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "itemSeparator": null,
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "description": "Input file.",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "label": "Input file",
                        "id": "#input_fastq",
                        "sbg:category": "File inputs"
                    }
                ]
            },
            "sbg:y": 166,
            "id": "#FastQC",
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
            ]
        }
    ],
    "sbg:createdOn": 1475785156,
    "outputs": [
        {
            "required": false,
            "sbg:x": 870,
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "ZIP",
            "label": "report_zip",
            "source": [
                "#FastQC.report_zip"
            ],
            "sbg:y": 170,
            "id": "#report_zip"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:createdBy": "duplexa",
    "class": "Workflow",
    "sbg:revision": 9,
    "sbg:latestRevision": 10,
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "label": "fastqc-0.11.4",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "sbg:canvas_y": 13,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:canvas_zoom": 1,
    "sbg:projectName": "Dev",
    "description": "",
    "sbg:canvas_x": 40,
    "sbg:modifiedOn": 1502373121,
    "hints": [],
    "inputs": [
        {
            "sbg:x": 14,
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_fastq",
            "sbg:y": 206,
            "id": "#input_fastq"
        },
        {
            "sbg:suggestedValue": null,
            "required": false,
            "sbg:includeInPorts": false,
            "sbg:toolDefaultValue": "1",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "label": "Threads",
            "type": [
                "null",
                "int"
            ],
            "id": "#threads",
            "sbg:category": "Options"
        }
    ]
}