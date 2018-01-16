#!/usr/bin/env python
# The Github repo for this project is:
# https://github.com/4dn-dcic/pipelines-cwl
# IMPORTANT: use Python 2.7 or above for this package

from setuptools import setup, find_packages

setup(
    name="Benchmark",
    version=open("Benchmark/_version.py").readlines()[-1].split()[-1].strip("\"'"),
    description="Benchmark functions that returns total space, mem, cpu given \
                input size and parameters for the CWL workflows in the pipelines-cwl repo",
    url="https://github.com/4dn-dcic/pipelines-cwl/",
    author="Soo Lee",
    author_email="duplexa@gmail.com",
    license="MIT",
    keywords=['pipeline-cwl', 'benchmark', 'cwl', 'common workflow language',
              'docker', 'tibanna', 'bioinformatics', '4dn'],
    packages=find_packages(),
    package_data={"": ["aws/*"]},
    classifiers=[
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
