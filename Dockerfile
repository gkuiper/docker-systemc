FROM ubuntu:trusty
MAINTAINER Guus Kuiper
ENV SYSTEMC_VERSION 2.3.0

RUN apt-get update -q && apt-get install -qy --no-install-recommends \
      build-essential curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN curl http://accellera.org/images/downloads/standards/systemc/systemc-$SYSTEMC_VERSION.tgz | tar -xz \
 && cd systemc-$SYSTEMC_VERSION \
 && mkdir objdir \
 && cd objdir \
 && export CXX=g++ \
 && mkdir -p /usr/local/systemc-$SYSTEMC_VERSION \
 && ../configure --prefix=/usr/local/systemc-$SYSTEMC_VERSION \
 && make \
 && make install \
 && make check \
 && cd .. \
 && rm -rf objdir

ENV CPLUS_INCLUDE_PATH /usr/local/systemc-$SYSTEMC_VERSION/include
