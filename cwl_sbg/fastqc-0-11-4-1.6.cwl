{
    "outputs": [
        {
            "sbg:y": 170,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "ZIP",
            "sbg:x": 870,
            "source": [
                "#FastQC.report_zip"
            ],
            "label": "report_zip",
            "id": "#report_zip",
            "required": false
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1502313267,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "duplexa",
    "sbg:canvas_zoom": 1,
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/6/raw/",
    "sbg:canvas_y": 0,
    "class": "Workflow",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/6",
    "sbg:validationErrors": [],
    "label": "fastqc-0.11.4",
    "steps": [
        {
            "inputs": [
                {
                    "source": [
                        "#input_fastq"
                    ],
                    "id": "#FastQC.input_fastq"
                },
                {
                    "source": [
                        "#threads"
                    ],
                    "id": "#FastQC.threads"
                }
            ],
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "sbg:y": 167,
            "sbg:x": 455,
            "id": "#FastQC",
            "run": {
                "outputs": [
                    {
                        "description": "Zip archive of the report.",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "ZIP",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "glob": "*_fastqc.zip"
                        },
                        "label": "Report zip",
                        "id": "#report_zip"
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "requirements": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1502313093,
                "sbg:revision": 4,
                "temporaryFailCodes": [],
                "sbg:createdBy": "duplexa",
                "sbg:sbgMaintained": false,
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/4",
                "sbg:cmdPreview": "fastqc  /path/to/input_fastq.ext",
                "stdout": "",
                "successCodes": [],
                "class": "CommandLineTool",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
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
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1475785113,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1502312296,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1502312495,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1502312518,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "simplified output",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1502313093,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/4/raw/",
                "baseCommand": [
                    "fastqc"
                ],
                "sbg:job": {
                    "inputs": {
                        "threads": null,
                        "input_fastq": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    }
                },
                "sbg:toolkit": "FastQC",
                "stdin": "",
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
                "cwlVersion": "sbg:draft-2",
                "label": "FastQC",
                "inputs": [
                    {
                        "description": "Input file.",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "File inputs",
                        "id": "#input_fastq",
                        "label": "Input file"
                    },
                    {
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:altPrefix": "-t",
                        "label": "Threads",
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "prefix": "--threads",
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "1",
                        "id": "#threads",
                        "sbg:category": "Options"
                    }
                ],
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:latestRevision": 4,
                "sbg:createdOn": 1475785113,
                "sbg:projectName": "Dev",
                "sbg:toolkitVersion": "0.11.4"
            }
        }
    ],
    "sbg:latestRevision": 6,
    "hints": [],
    "sbg:canvas_x": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "inputs": [
        {
            "sbg:y": 161,
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:x": 75,
            "label": "input_fastq",
            "id": "#input_fastq"
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "sbg:altPrefix": "-t",
            "label": "Threads",
            "id": "#threads",
            "required": false
        }
    ],
    "description": "",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/6.png",
    "sbg:revisionNotes": "removed expression requirement",
    "sbg:revision": 6,
    "sbg:createdOn": 1475785156,
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785156,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1475785232,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1494861916,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1494861985,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1502312053,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1502312569,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "simplified arguments",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1502313267,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:revision": 6
        }
    ]
}