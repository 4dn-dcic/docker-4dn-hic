{
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
    "arguments": [],
    "successCodes": [],
    "label": "FastQC",
    "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
    "sbg:validationErrors": [],
    "sbg:toolkit": "FastQC",
    "outputs": [
        {
            "sbg:fileTypes": "ZIP",
            "label": "Report zip",
            "id": "#report_zip",
            "outputBinding": {
                "sbg:metadata": {
                    "__inherit__": "input_fastq"
                },
                "glob": "*_fastqc.zip",
                "sbg:inheritMetadataFrom": "#input_fastq"
            },
            "type": [
                "null",
                "File"
            ],
            "description": "Zip archive of the report."
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/6/raw/",
    "sbg:toolAuthor": "Babraham Institute",
    "temporaryFailCodes": [],
    "requirements": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
            "sbg:modifiedOn": 1475785113
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
            "sbg:modifiedOn": 1502312296
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": "simplified arguments",
            "sbg:modifiedOn": 1502312495
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": "simplified output",
            "sbg:modifiedOn": 1502312518
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502313093
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
            "sbg:modifiedOn": 1502318718
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502318741
        }
    ],
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ],
    "sbg:modifiedOn": 1502318741,
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 6,
    "sbg:createdOn": 1475785113,
    "sbg:license": "GNU General Public License v3.0 only",
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
    "sbg:job": {
        "inputs": {
            "input_fastq": {
                "path": "/path/to/input_fastq.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "outdir": "outdir-string-value",
            "threads": null
        },
        "allocatedResources": {
            "mem": "",
            "cpu": ""
        }
    },
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "Input file",
            "id": "#input_fastq",
            "sbg:category": "File inputs",
            "inputBinding": {
                "itemSeparator": null,
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "type": [
                "File"
            ],
            "description": "Input file."
        },
        {
            "label": "Threads",
            "id": "#threads",
            "sbg:category": "Options",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            },
            "sbg:toolDefaultValue": "."
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revision": 6,
    "sbg:toolkitVersion": "0.11.5",
    "baseCommand": [
        "run-fastqc.sh"
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
    "stdin": "",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v32",
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
    ]
}