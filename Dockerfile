FROM ubuntu:18.04

MAINTAINER <christoph.hahn@uni-graz.at>

RUN apt-get update && apt-get -y upgrade && apt-get install -y build-essential perl-doc ncbi-blast+ && \
	apt-get clean && apt-get purge && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PERL_MM_USE_DEFAULT=1
RUN cpan List::MoreUtils



