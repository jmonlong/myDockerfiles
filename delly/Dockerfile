FROM ubuntu:18.04

MAINTAINER jmonlong@ucsc.edu

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        bcftools \
        tabix \
        gcc \
        time \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /home

RUN wget --no-check-certificate https://github.com/dellytools/delly/releases/download/v0.7.9/delly_v0.7.9_parallel_linux_x86_64bit \
        && mv delly_v0.7.9_parallel_linux_x86_64bit /bin/delly \
        && chmod +x /bin/delly

ENTRYPOINT ["delly"]
