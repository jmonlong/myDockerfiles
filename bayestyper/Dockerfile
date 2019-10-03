FROM ubuntu:18.04

MAINTAINER jmonlong@ucsc.edu

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        bcftools \
        tabix \
        gcc \
        git \
        time \
        libbz2-dev \
        zlib1g zlib1g-dev \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /home

RUN wget --no-check-certificate https://github.com/refresh-bio/KMC/releases/download/v3.1.1/KMC3.1.1.linux.tar.gz \
        && tar -xzf KMC3.1.1.linux.tar.gz \
        && mv kmc /bin/ && chmod +x /bin/kmc \
        && mv kmc_dump /bin/ && chmod +x /bin/kmc_dump \
        && mv kmc_tools /bin/ && chmod +x /bin/kmc_tools \
        && rm KMC3.1.1.linux.tar.gz

ADD bayesTyper /bin/

ADD bayesTyperTools /bin/

RUN chmod +x /bin/bayesTyper \
        && chmod +x /bin/bayesTyperTools
