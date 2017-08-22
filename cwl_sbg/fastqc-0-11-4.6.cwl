{
    "stdin": "",
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1502318741,
    "class": "CommandLineTool",
    "sbg:license": "GNU General Public License v3.0 only",
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
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
    "requirements": [],
    "sbg:job": {
        "inputs": {
            "threads": null,
            "outdir": "outdir-string-value",
            "input_fastq": {
                "class": "File",
                "secondaryFiles": [],
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
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1475785113,
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/6/raw/",
    "sbg:sbgMaintained": false,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "ZIP",
            "id": "#report_zip",
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
    "label": "FastQC",
    "sbg:revision": 6,
    "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "arguments": [],
    "inputs": [
        {
            "sbg:category": "File inputs",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_fastq",
            "label": "Input file",
            "description": "Input file.",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "itemSeparator": null,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:category": "Options",
            "id": "#threads",
            "sbg:toolDefaultValue": "1",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "label": "Threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir",
            "sbg:toolDefaultValue": "."
        }
    ],
    "sbg:toolkitVersion": "0.11.5",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:toolAuthor": "Babraham Institute",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785113,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
        },
        {
            "sbg:modifiedOn": 1502312296,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
        },
        {
            "sbg:modifiedOn": 1502312495,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:modifiedOn": 1502312518,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "simplified output"
        },
        {
            "sbg:modifiedOn": 1502313093,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1502318718,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control."
        },
        {
            "sbg:modifiedOn": 1502318741,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        }
    ],
    "sbg:latestRevision": 6,
    "cwlVersion": "sbg:draft-2",
    "successCodes": []
}