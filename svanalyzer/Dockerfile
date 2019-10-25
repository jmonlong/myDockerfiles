FROM ubuntu:18.04

MAINTAINER jmonlong@ucsc.edu

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        samtools \
        build-essential \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /home

RUN cpan Build Log::Log4perl Locale::Maketext::Lexicon Module::Signature Test::Deep Test::YAML Test::Base Algorithm::Diff Spiffy Text::Diff Test::Requires Test::Needs

RUN wget --no-check-certificate https://github.com/nhansen/SVanalyzer/archive/v0.32.tar.gz -O SVanalyzer.tar.gz \
        && tar -xzvf SVanalyzer.tar.gz \
        && cd SVanalyzer* \
        && perl Build.PL \
        && ./Build \
        && ./Build test \
        && ./Build install
