{
    "sbg:job": {
        "allocatedResources": {
            "cpu": "",
            "mem": ""
        },
        "inputs": {
            "threads": null,
            "input_fastq": {
                "class": "File",
                "path": "/path/to/input_fastq.ext",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "sbg:toolAuthor": "Babraham Institute",
    "hints": [
        {
            "dockerImageId": "759c4c8fbafd",
            "class": "DockerRequirement",
            "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4"
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
        }
    ],
    "sbg:license": "GNU General Public License v3.0 only",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/4/raw/",
    "successCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
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
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "class": "CommandLineTool",
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
    "sbg:revision": 4,
    "sbg:image_url": null,
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/4",
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ],
    "stdout": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "itemSeparator": null,
                "separate": true,
                "position": 2
            },
            "label": "Input file",
            "description": "Input file.",
            "sbg:category": "File inputs",
            "id": "#input_fastq",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "inputBinding": {
                "prefix": "--threads",
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "label": "Threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:altPrefix": "-t",
            "sbg:category": "Options",
            "id": "#threads",
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "baseCommand": [
        "fastqc"
    ],
    "sbg:toolkitVersion": "0.11.4",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "stdin": "",
    "sbg:cmdPreview": "fastqc  /path/to/input_fastq.ext",
    "requirements": [],
    "label": "FastQC",
    "sbg:modifiedOn": 1502313093,
    "sbg:createdOn": 1475785113,
    "sbg:latestRevision": 4,
    "sbg:toolkit": "FastQC",
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "label": "Report zip",
            "description": "Zip archive of the report.",
            "outputBinding": {
                "glob": "*_fastqc.zip",
                "sbg:inheritMetadataFrom": "#input_fastq",
                "sbg:metadata": {
                    "__inherit__": "input_fastq"
                }
            },
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "ZIP"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:validationErrors": []
}