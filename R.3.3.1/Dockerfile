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

CMD ["R"]