FROM ubuntu:20.04
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y \
    #build-essential \
    bzip2 \
    #checkinstall \
    gcc \
    git \
    less \
    #libreadline-gplv2-dev \
    #libncursesw5-dev \
    #libsqlite3-dev \
    #tk-dev \
    #libgdbm-dev \
    #libc6-dev \
    #libbz2-dev \
    #libffi-dev \
    #libncurses-dev \
    make \
    time \
    unzip \
    vim \
    wget \
    zlib1g-dev \
    liblz4-tool

# installing python3.8 & pip
RUN apt-get update -y && apt-get install -y \
    python3.8-dev \
    python3-setuptools \
    && wget https://bootstrap.pypa.io/get-pip.py \
    && python3.8 get-pip.py

# installing java (for nozzle) - latest java version
RUN apt-get update -y && apt-get install -y default-jdk 

# installing R & dependencies for pairsqc
# r-base, r-base-dev for R, libcurl4-openssl-dev, libssl-dev for devtools
RUN apt-get update -y && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    r-base \
    r-base-dev \
    r-cran-devtools

RUN R -e 'install.packages("devtools", repos="http://cran.us.r-project.org")' \ # devtools 
RUN R -e 'install.packages( "Nozzle.R1", type="source", repos="http://cran.us.r-project.org" )' \ # nozzle
RUN R -e 'library(devtools); install_url("https://github.com/SooLee/plotosaurus/archive/0.9.2.zip")' \ # plotosaurus
RUN R -e 'install.packages("stringr", repos="http://cran.us.r-project.org" )'

# installing conda
#RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda3 -b
#ENV PATH=/miniconda3/bin:$PATH
#RUN conda update -y conda \
#    && rm Miniconda3-latest-Linux-x86_64.sh

RUN pip3 install \
    cython \
    numpy \
    pysam

# installing gawk for juicer
RUN apt-get update -y && apt-get install -y gawk \
    && echo 'alias awk=gawk' >> ~/.bashrc

# download tools
WORKDIR /usr/local/bin
COPY downloads.sh .
RUN . downloads.sh

# set path
ENV PATH=/usr/local/bin/bwa/:$PATH
ENV PATH=/usr/local/bin/samtools/:$PATH
ENV PATH=/usr/local/bin/pairix/bin/:/usr/local/bin/pairix/util/:$PATH
ENV PATH=/usr/local/bin/pairix/util/bam2pairs/:$PATH
ENV PATH=/usr/local/bin/pairsqc/:$PATH
ENV PATH=/usr/local/bin/juicer/CPU/:/usr/local/bin/juicer/CPU/common:$PATH
ENV PATH=/usr/local/bin/hic2cool/:$PATH
ENV PATH=/usr/local/bin/mcool2hic/:$PATH
ENV PATH=/usr/local/bin/FastQC/:$PATH

# supporting UTF-8
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# wrapper
COPY scripts/ .
RUN chmod +x run*.sh

# default command
CMD ["run-list.sh"]

