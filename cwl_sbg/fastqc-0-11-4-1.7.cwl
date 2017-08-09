{
    "outputs": [
        {
            "source": [
                "#FastQC.report_zip"
            ],
            "label": "report_zip",
            "id": "#report_zip",
            "sbg:x": 870,
            "sbg:includeInPorts": true,
            "sbg:y": 170,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "ZIP"
        }
    ],
    "label": "fastqc-0.11.4",
    "class": "Workflow",
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 7,
    "inputs": [
        {
            "sbg:x": 98,
            "label": "input_fastq",
            "id": "#input_fastq",
            "sbg:y": 168,
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "label": "Threads",
            "id": "#threads",
            "sbg:altPrefix": "-t",
            "sbg:includeInPorts": false,
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        }
    ],
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "description": "",
    "sbg:modifiedOn": 1502314283,
    "sbg:canvas_zoom": 1,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "sbg:x": 455,
            "run": {
                "outputs": [
                    {
                        "label": "Report zip",
                        "id": "#report_zip",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*_fastqc.zip",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq"
                        },
                        "description": "Zip archive of the report.",
                        "sbg:fileTypes": "ZIP"
                    }
                ],
                "sbg:toolAuthor": "Babraham Institute",
                "label": "FastQC",
                "baseCommand": [
                    "fastqc"
                ],
                "sbg:revision": 4,
                "arguments": [],
                "y": 167,
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "successCodes": [],
                "sbg:latestRevision": 4,
                "hints": [
                    {
                        "dockerImageId": "759c4c8fbafd",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
                        "class": "DockerRequirement"
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
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:toolkitVersion": "0.11.4",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:projectName": "Dev",
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:cmdPreview": "fastqc  /path/to/input_fastq.ext",
                "x": 455,
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
                "class": "CommandLineTool",
                "id": "4dn-dcic/dev/fastqc-0-11-4/4",
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:image_url": null,
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
                    }
                ],
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/4",
                "sbg:toolkit": "FastQC",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "input_fastq": {
                            "path": "/path/to/input_fastq.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "threads": null
                    },
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    }
                },
                "temporaryFailCodes": [],
                "requirements": [],
                "sbg:modifiedOn": 1502313093,
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "duplexa",
                "stdout": "",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1475785113,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "inputs": [
                    {
                        "label": "Threads",
                        "id": "#threads",
                        "sbg:altPrefix": "-t",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "prefix": "--threads"
                        },
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "sbg:category": "Options"
                    },
                    {
                        "label": "Input file",
                        "id": "#input_fastq",
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "description": "Input file.",
                        "sbg:category": "File inputs"
                    }
                ]
            },
            "inputs": [
                {
                    "source": [
                        "#threads"
                    ],
                    "id": "#FastQC.threads"
                },
                {
                    "source": [
                        "#input_fastq"
                    ],
                    "id": "#FastQC.input_fastq"
                }
            ],
            "id": "#FastQC",
            "sbg:y": 167
        }
    ],
    "sbg:revision": 7,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/7/raw/",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/7.png",
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
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/7",
    "sbg:canvas_y": 0,
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "updated input_fastq, no longer an array.",
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1475785156,
    "sbg:canvas_x": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "hints": []
}