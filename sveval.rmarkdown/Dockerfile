FROM jmonlong/ubuntur@sha256:3cf0c3426c4413b61b9a2e3bab18b6312703bfcea6ccd018fcbf4d6a81cb63fa

MAINTAINER jmonlong@ucsc.edu

WORKDIR /home

ADD install.R /home

RUN R -f /home/install.R

RUN git clone https://github.com/jmonlong/sveval.git /home/sveval

RUN R -e "devtools::install('/home/sveval')"

CMD ["R"]
