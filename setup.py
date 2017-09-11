#!/usr/bin/env python
# The Github repo for this project is:
# https://github.com/4dn-dcic/pipelines-cwl
# IMPORTANT: use Python 2.7 or above for this package

from setuptools import setup

setup(
    name = "Benchmark",
    version = "0.0.7",
    url = "https://github.com/4dn-dcic/pipelines-cwl/",
    download_url = "https://github.com/4dn-dcic/pipelines-cwl/tarball/0.0.7",
    author = "Soo Lee",
    author_email = "duplexa@gmail.com",
    license = "MIT",
    keywords = ['pipeline-cwl', 'benchmark', 'cwl', 'common workflow language', 'docker', 'tibanna', 'bioinformatics', '4dn'],
    packages = ['Benchmark'],
    classifiers = [
        "Programming Language :: Python :: 2.7",
        "Programming Language :: Python :: 3",
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "Intended Audience :: Science/Research",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Programming Language :: Python",
        "Topic :: Software Development :: Libraries :: Python Modules",
        "Topic :: Scientific/Engineering :: Bio-Informatics"
    ]
)
