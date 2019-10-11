FROM ubuntu:18.04

MAINTAINER jmonlong@ucsc.edu

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        hmmer \
        unzip \
        build-essential \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/bin

RUN wget http://tandem.bu.edu/trf/downloads/trf407b.linux64 && mv trf*.linux64 trf && chmod +x trf

WORKDIR /usr/local

RUN wget http://repeatmasker.org/RepeatMasker-open-4-0-9-p2.tar.gz \
    && tar -xzvf RepeatMasker-open*.tar.gz \
        && rm -f RepeatMasker-open*.tar.gz

# WORKDIR /usr/local/RepeatMasker/Libraries

# RUN wget https://www.dfam.org/releases/Dfam_3.1/families/Dfam.hmm.gz \
#         && gunzip Dfam.hmm.gz

WORKDIR /usr/local/RepeatMasker

RUN perl ./configure -trfbin=/usr/local/bin/trf -hmmerbin=/usr/bin/nhmmscan

RUN cpan Text::Soundex

ENV PATH=/usr/local/RepeatMasker:$PATH

WORKDIR /home

ADD test.fa /home

RUN RepeatMasker --species human test.fa

CMD ['RepeatMasker']
