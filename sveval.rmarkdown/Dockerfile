FROM jmonlong/ubuntur

MAINTAINER jmonlong@ucsc.edu

WORKDIR /home

ADD install.R /home

RUN R -f /home/install.R

RUN git clone https://github.com/jmonlong/sveval.git /home/sveval

RUN R -e "devtools::install('/home/sveval')"

CMD ["R"]
