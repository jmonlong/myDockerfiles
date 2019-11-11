FROM jmonlong/ubuntur@sha256:7781934a5cd654fd3b1a3e621fadbe02c7eb059305908c317ceef5047046eeab

MAINTAINER jmonlong@ucsc.edu

WORKDIR /home

ADD install.R /home

RUN R -f /home/install.R

RUN git clone https://github.com/jmonlong/sveval.git /home/sveval &&
        cd /home/sveval && 
        git reset --hard e6bc0ce16a3b99de7db871a6b18e738432d09873

RUN R -e "devtools::install('/home/sveval')"

CMD ["R"]
