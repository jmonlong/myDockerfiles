FROM jmonlong/ubuntur@sha256:7781934a5cd654fd3b1a3e621fadbe02c7eb059305908c317ceef5047046eeab

MAINTAINER jmonlong@ucsc.edu

WORKDIR /home

ADD install.R /home

RUN R -f /home/install.R

RUN R -e "BiocManager::install('jmonlong/sveval@3d05aeadeba375d1362dbc12eee6e42707d2dfd0')"

CMD ["R"]
