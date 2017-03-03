## source file for duplexa/bwa-mem:v1

FROM ubuntu:16.04
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
RUN apt-get update -y && apt-get install -y wget unzip less vim bzip2 make gcc zlib1g-dev libncurses-dev git

# installing python3.5 & pip
RUN apt-get install -y python3.5-dev python3-setuptools
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.5 get-pip.py

# download tools
WORKDIR /usr/local/bin
COPY downloads.sh .
RUN . downloads.sh

# set path
ENV PATH=/usr/local/bin/bwa/:$PATH
ENV PATH=/usr/local/bin/samtools/:$PATH
ENV PATH=/usr/local/bin/pairix/bin/:$PATH
ENV PATH=/usr/local/bin/bam2pairs/:$PATH

# wrapper
COPY scripts/ .
RUN chmod +x run*.sh

# default command
CMD ["run-list.sh"]

