{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "requirements": [],
    "class": "Workflow",
    "sbg:createdOn": 1475785156,
    "sbg:latestRevision": 10,
    "sbg:project": "4dn-dcic/dev",
    "label": "fastqc-0.11.4",
    "sbg:validationErrors": [],
    "sbg:revision": 9,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1475785156,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1475785232,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494861916,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494861985,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502312053,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed scatter across input_fastq"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502312569,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502313267,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed expression requirement"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1502314283,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "updated input_fastq, no longer an array."
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1502318802,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1502373121,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1502390177,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": 13,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:canvas_x": 40,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1502373121,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "description": "",
    "inputs": [
        {
            "id": "#input_fastq",
            "sbg:x": 14,
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_fastq",
            "sbg:y": 206
        },
        {
            "sbg:suggestedValue": null,
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "label": "Threads",
            "sbg:category": "Options",
            "sbg:toolDefaultValue": "1",
            "required": false,
            "sbg:includeInPorts": false
        }
    ],
    "sbg:sbgMaintained": false,
    "hints": [],
    "sbg:createdBy": "duplexa",
    "outputs": [
        {
            "id": "#report_zip",
            "sbg:x": 870,
            "source": [
                "#FastQC.report_zip"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "ZIP",
            "label": "report_zip",
            "required": false,
            "sbg:y": 170,
            "sbg:includeInPorts": true
        }
    ],
    "sbg:projectName": "Dev",
    "steps": [
        {
            "id": "#FastQC",
            "sbg:x": 455,
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "run": {
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "requirements": [],
                "successCodes": [],
                "class": "CommandLineTool",
                "sbg:toolkit": "FastQC",
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "threads": null,
                        "input_fastq": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_fastq.ext",
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    }
                },
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1475785113,
                "y": 166,
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:revision": 6,
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1475785113,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1502312296,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1502312495,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "simplified arguments"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1502312518,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "simplified output"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502313093,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1502318718,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control."
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1502318741,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:toolAuthor": "Babraham Institute",
                "cwlVersion": "sbg:draft-2",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:latestRevision": 6,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1502318741,
                "sbg:image_url": null,
                "sbg:toolkitVersion": "0.11.5",
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "arguments": [],
                "inputs": [
                    {
                        "id": "#threads",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "label": "Threads",
                        "sbg:category": "Options",
                        "sbg:toolDefaultValue": "1",
                        "required": false,
                        "sbg:includeInPorts": false
                    },
                    {
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        }
                    },
                    {
                        "id": "#input_fastq",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "itemSeparator": null,
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "label": "Input file",
                        "description": "Input file.",
                        "sbg:category": "File inputs",
                        "required": true
                    }
                ],
                "x": 455,
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerImageId": "759c4c8fbafd",
                        "class": "DockerRequirement",
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
                "stdin": "",
                "sbg:createdBy": "duplexa",
                "outputs": [
                    {
                        "id": "#report_zip",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "ZIP",
                        "label": "Report zip",
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip"
                        },
                        "description": "Zip archive of the report."
                    }
                ],
                "sbg:projectName": "Dev",
                "label": "FastQC",
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "stdout": "",
                "temporaryFailCodes": []
            },
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                },
                {
                    "default": ".",
                    "id": "#FastQC.outdir"
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                }
            ],
            "sbg:y": 166
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:canvas_zoom": 1
}