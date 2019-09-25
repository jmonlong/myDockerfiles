FROM quay.io/vgteam/vg:v1.19.0

MAINTAINER jmonlong@ucsc.edu

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        wget \
        curl \
        python3 \
        python3-pip \
        python3-setuptools \
        python \
        python-dev \
        python-pip \
        python-setuptools \
        python3-dev \
        gcc \ 
        bcftools \
        tabix \
        && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

RUN pip3 install --no-cache-dir requests awscli snakemake

WORKDIR /home

RUN curl -L https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17_x64-linux.tar.bz2 > /home/minimap2-2.17_x64-linux.tar.bz2 \
        && tar -jxvf /home/minimap2-2.17_x64-linux.tar.bz2 \
        && rm /home/minimap2-2.17_x64-linux.tar.bz2

ENV PATH=/home/minimap2-2.17_x64-linux/:$PATH

ADD vgamb/run-snakemake.sh /home
