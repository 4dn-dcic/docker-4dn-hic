{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "report_zip",
            "sbg:x": 870,
            "source": [
                "#FastQC.report_zip"
            ],
            "id": "#report_zip",
            "sbg:fileTypes": "ZIP",
            "sbg:y": 170
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1475785156,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1475785232,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494861916,
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494861985,
            "sbg:revisionNotes": "scattered across input_fastq"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312053,
            "sbg:revisionNotes": "removed scatter across input_fastq"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312569,
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502313267,
            "sbg:revisionNotes": "removed expression requirement"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502314283,
            "sbg:revisionNotes": "updated input_fastq, no longer an array."
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502318802,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502373121,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502390177,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "4dn-dcic",
    "hints": [],
    "requirements": [],
    "sbg:latestRevision": 10,
    "description": "",
    "sbg:canvas_y": 13,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "run": {
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "outputs": [
                    {
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
                        "sbg:fileTypes": "ZIP",
                        "label": "Report zip",
                        "description": "Zip archive of the report.",
                        "id": "#report_zip"
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revisionNotes": "simplified arguments"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revisionNotes": "simplified output"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control."
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "duplexa",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:toolkitVersion": "0.11.5",
                "x": 455,
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
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:latestRevision": 6,
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
                "stdin": "",
                "sbg:validationErrors": [],
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "requirements": [],
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:createdOn": 1475785113,
                "y": 166,
                "stdout": "",
                "sbg:image_url": null,
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "cwlVersion": "sbg:draft-2",
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "sbg:modifiedOn": 1502318741,
                "sbg:toolkit": "FastQC",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "1",
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "id": "#threads",
                        "sbg:category": "Options",
                        "label": "Threads"
                    },
                    {
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": ".",
                        "required": false
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "label": "Input file",
                        "description": "Input file.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "itemSeparator": null,
                            "separate": true
                        },
                        "id": "#input_fastq",
                        "sbg:category": "File inputs"
                    }
                ],
                "sbg:revision": 6,
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "label": "FastQC",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    },
                    "inputs": {
                        "input_fastq": {
                            "class": "File",
                            "path": "/path/to/input_fastq.ext",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "threads": null,
                        "outdir": "outdir-string-value"
                    }
                },
                "temporaryFailCodes": [],
                "arguments": [],
                "successCodes": []
            },
            "sbg:x": 455,
            "sbg:y": 166,
            "id": "#FastQC",
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                },
                {
                    "id": "#FastQC.outdir",
                    "default": "."
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                }
            ]
        }
    ],
    "sbg:createdOn": 1475785156,
    "sbg:canvas_x": 40,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "cwlVersion": "sbg:draft-2",
    "class": "Workflow",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_fastq",
            "sbg:x": 14,
            "sbg:y": 206,
            "id": "#input_fastq"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": null,
            "sbg:includeInPorts": false,
            "sbg:toolDefaultValue": "1",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:category": "Options",
            "id": "#threads",
            "required": false,
            "label": "Threads"
        }
    ],
    "sbg:modifiedOn": 1502373121,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 9,
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:canvas_zoom": 1,
    "sbg:projectName": "Dev",
    "label": "fastqc-0.11.4"
}