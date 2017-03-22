## source file for duplexa/bwa-mem:v1

FROM ubuntu:16.04
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
RUN apt-get update -y && apt-get install -y wget unzip less vim bzip2 make gcc zlib1g-dev libncurses-dev git

# installing python3.5 & pip
RUN apt-get update -y && apt-get install -y python3.5-dev python3-setuptools
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.5 get-pip.py

# python module dependencies
RUN pip install pypairix==0.1.0

# installing java (for nozzle) - latest java version
RUN apt-get update -y && apt-get install -y default-jdk 

# installing R & dependencies for pairsqc
# r-base, r-base-dev for R, libcurl4-openssl-dev, libssl-dev for devtools
RUN apt-get update -y && apt-get install -y r-base r-base-dev libcurl4-openssl-dev libssl-dev 
RUN R -e 'install.packages("devtools", repos="http://cran.us.r-project.org")' # devtools 
RUN R -e 'install.packages( "Nozzle.R1", type="source", repos="http://cran.us.r-project.org" )' # nozzle
RUN R -e 'library(devtools); install_url("https://github.com/SooLee/plotosaurus/archive/0.9.2.zip")' # plotosaurus
RUN R -e 'install.packages("stringr", repos="http://cran.us.r-project.org" )'

# download tools
WORKDIR /usr/local/bin
COPY downloads.sh .
RUN . downloads.sh

# set path
ENV PATH=/usr/local/bin/bwa/:$PATH
ENV PATH=/usr/local/bin/samtools/:$PATH
ENV PATH=/usr/local/bin/pairix/bin/:$PATH
ENV PATH=/usr/local/bin/bam2pairs/:$PATH
ENV PATH=/usr/local/bin/pairsqc/:$PATH

# wrapper
COPY scripts/ .
RUN chmod +x run*.sh

# default command
CMD ["run-list.sh"]

