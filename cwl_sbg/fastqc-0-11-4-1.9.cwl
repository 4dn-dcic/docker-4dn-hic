{
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "class": "Workflow",
    "requirements": [],
    "sbg:latestRevision": 9,
    "label": "fastqc-0.11.4",
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 9,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1475785156,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1475785232,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:modifiedOn": 1494861916,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:modifiedOn": 1494861985,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:modifiedOn": 1502312053,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "simplified arguments",
            "sbg:modifiedOn": 1502312569,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:modifiedOn": 1502313267,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "updated input_fastq, no longer an array.",
            "sbg:modifiedOn": 1502314283,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
            "sbg:modifiedOn": 1502318802,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502373121,
            "sbg:revision": 9
        }
    ],
    "sbg:canvas_y": 13,
    "steps": [
        {
            "run": {
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:image_url": null,
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "stdin": "",
                "requirements": [],
                "sbg:latestRevision": 6,
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "y": 166,
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "class": "CommandLineTool",
                "sbg:projectName": "Dev",
                "stdout": "",
                "inputs": [
                    {
                        "label": "Threads",
                        "required": false,
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "id": "#threads",
                        "sbg:includeInPorts": false,
                        "sbg:category": "Options",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "1"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir"
                    },
                    {
                        "label": "Input file",
                        "required": true,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "itemSeparator": null,
                            "separate": true
                        },
                        "id": "#input_fastq",
                        "description": "Input file.",
                        "sbg:category": "File inputs",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
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
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": "",
                        "mem": ""
                    },
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_fastq": {
                            "path": "/path/to/input_fastq.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "threads": null
                    }
                },
                "x": 455,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "simplified output",
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revision": 6
                    }
                ],
                "label": "FastQC",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:sbgMaintained": false,
                "sbg:toolkitVersion": "0.11.5",
                "sbg:toolkit": "FastQC",
                "arguments": [],
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "hints": [
                    {
                        "dockerImageId": "759c4c8fbafd",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v32"
                    },
                    {
                        "value": "",
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": "",
                        "class": "sbg:MemRequirement"
                    }
                ],
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:createdOn": 1475785113,
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "sbg:createdBy": "duplexa",
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "label": "Report zip",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            }
                        },
                        "id": "#report_zip",
                        "description": "Zip archive of the report.",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "ZIP"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 6,
                "sbg:modifiedOn": 1502318741,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ]
            },
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "sbg:y": 166,
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
    "inputs": [
        {
            "label": "input_fastq",
            "id": "#input_fastq",
            "sbg:y": 206,
            "type": [
                "File"
            ],
            "sbg:x": 14,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "label": "Threads",
            "required": false,
            "sbg:suggestedValue": null,
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "sbg:includeInPorts": false,
            "sbg:category": "Options",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "1"
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:canvas_zoom": 1,
    "hints": [],
    "sbg:createdOn": 1475785156,
    "outputs": [
        {
            "label": "report_zip",
            "required": false,
            "id": "#report_zip",
            "sbg:includeInPorts": true,
            "source": [
                "#FastQC.report_zip"
            ],
            "sbg:y": 170,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 870,
            "sbg:fileTypes": "ZIP"
        }
    ],
    "description": "",
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:canvas_x": 40,
    "sbg:modifiedOn": 1502373121
}