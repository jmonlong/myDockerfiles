FROM ubuntu:14.04

RUN apt-get update \
    && apt-get install -y git dpkg-dev make g++ gcc binutils libx11-dev libxpm-dev \
    libxft-dev libxext-dev

RUN apt-get update \
    && apt-get install -y gfortran libssl-dev libpcre3-dev \
    xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
    libmysqlclient-dev libfftw3-dev cfitsio-dev \
    graphviz-dev libavahi-compat-libdnssd-dev \
    libldap2-dev python-dev libxml2-dev libkrb5-dev \
    libgsl0-dev libqt4-dev

COPY root_v6.06.04.source.tar.gz ./

RUN tar -xvf root_v6.06.04.source.tar.gz && \
    cd root-6.06.04 && \
    ./configure && \
    make && \
    cd ..

COPY v0.3.2.tar.gz ./

RUN tar -xzvf v0.3.2.tar.gz && \
    cd CNVnator-0.3.2/src/samtools && \
    make && \
    cd ../ & \
    make
