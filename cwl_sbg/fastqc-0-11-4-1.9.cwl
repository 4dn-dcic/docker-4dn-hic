{
    "inputs": [
        {
            "label": "input_fastq",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:x": 14,
            "id": "#input_fastq",
            "type": [
                "File"
            ],
            "sbg:y": 206
        },
        {
            "label": "Threads",
            "sbg:suggestedValue": null,
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:includeInPorts": false,
            "sbg:category": "Options",
            "id": "#threads",
            "sbg:toolDefaultValue": "1",
            "required": false,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "outputs": [
        {
            "label": "report_zip",
            "sbg:fileTypes": "ZIP",
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#report_zip",
            "sbg:y": 170,
            "source": [
                "#FastQC.report_zip"
            ],
            "sbg:x": 870,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "Workflow",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 10,
    "sbg:revision": 9,
    "steps": [
        {
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
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "sbg:x": 455,
            "run": {
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "inputs": [
                    {
                        "label": "Threads",
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "required": false,
                        "sbg:includeInPorts": false,
                        "sbg:category": "Options",
                        "id": "#threads",
                        "sbg:toolDefaultValue": "1",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outdir",
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "label": "Input file",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "description": "Input file.",
                        "required": true,
                        "id": "#input_fastq",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "itemSeparator": null,
                            "separate": true
                        },
                        "sbg:category": "File inputs"
                    }
                ],
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "class": "CommandLineTool",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:toolAuthor": "Babraham Institute",
                "successCodes": [],
                "sbg:revision": 6,
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:modifiedOn": 1502318741,
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedBy": "4dn-dcic",
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
                "hints": [
                    {
                        "dockerPull": "duplexa/4dn-hic:v32",
                        "dockerImageId": "759c4c8fbafd",
                        "class": "DockerRequirement"
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
                "sbg:toolkit": "FastQC",
                "sbg:validationErrors": [],
                "sbg:toolkitVersion": "0.11.5",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "outputs": [
                    {
                        "label": "Report zip",
                        "sbg:fileTypes": "ZIP",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "glob": "*_fastqc.zip"
                        },
                        "description": "Zip archive of the report.",
                        "id": "#report_zip",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "label": "FastQC",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revisionNotes": "simplified output",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "stdin": "",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:job": {
                    "inputs": {
                        "threads": null,
                        "input_fastq": {
                            "size": 0,
                            "path": "/path/to/input_fastq.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "outdir": "outdir-string-value"
                    },
                    "allocatedResources": {
                        "cpu": "",
                        "mem": ""
                    }
                },
                "y": 166,
                "sbg:createdBy": "duplexa",
                "sbg:projectName": "Dev",
                "sbg:createdOn": 1475785113,
                "sbg:latestRevision": 6,
                "stdout": "",
                "requirements": [],
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false
            },
            "id": "#FastQC",
            "sbg:y": 166
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "sbg:modifiedOn": 1502373121,
    "cwlVersion": "sbg:draft-2",
    "hints": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "sbg:canvas_y": 13,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "label": "fastqc-0.11.4",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785156,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1475785232,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1494861916,
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1494861985,
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1502312053,
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1502312569,
            "sbg:revisionNotes": "simplified arguments",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1502313267,
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1502314283,
            "sbg:revisionNotes": "updated input_fastq, no longer an array.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1502318802,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1502373121,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1502390177,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10
        }
    ],
    "description": "",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:projectName": "Dev",
    "sbg:canvas_x": 40,
    "sbg:createdBy": "duplexa",
    "sbg:canvas_zoom": 1,
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1475785156,
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:sbgMaintained": false
}