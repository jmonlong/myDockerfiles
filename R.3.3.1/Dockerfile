FROM r-base:3.3.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && wget https://github.com/jgm/pandoc/releases/download/1.18/pandoc-1.18-1-amd64.deb \
    && dpkg -i pandoc-1.18-1-amd64.deb \
    && apt-get install -f \
    && rm pandoc-1.18-1-amd64.deb

RUN install2.r  -r https://cloud.r-project.org --deps TRUE \
    devtools knitr rmarkdown magrittr dplyr RColorBrewer ggplot2 parallel tidyr ggdendro fpc formatR data.table \
    && rm -rf /tmp/downloaded_packages/

RUN install2.r -r http://bioconductor.org/packages/3.0/bioc -r https://cloud.r-project.org --deps TRUE \
    GenomicRanges Gviz BSgenome.Hsapiens.UCSC.hg19 Rsamtools DNAcopy \
    && rm -rf /tmp/downloaded_packages/

RUN installGithub.r jmonlong/PopSV \
    && rm -rf /tmp/downloaded_packages/

CMD ["R"]