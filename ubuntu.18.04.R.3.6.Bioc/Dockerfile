FROM ubuntu:18.04

MAINTAINER jmonlong@ucsc.edu

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        git \
        libxml2-dev libssl-dev libmariadbclient-dev libcurl4-openssl-dev \
        apt-transport-https software-properties-common dirmngr gpg-agent \
        && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && wget https://github.com/jgm/pandoc/releases/download/1.18/pandoc-1.18-1-amd64.deb \
    && dpkg -i pandoc-1.18-1-amd64.deb \
    && apt-get install -f \
    && rm pandoc-1.18-1-amd64.deb

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
        && add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' \
        && apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y r-base r-base-dev

WORKDIR /home

ADD install.R /home

RUN R -f /home/install.R

ADD install_tinytex.R /home

RUN R -f /home/install_tinytex.R

ENV PATH=/root/bin:$PATH

CMD ["R"]
