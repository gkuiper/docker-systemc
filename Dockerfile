FROM ubuntu:trusty
MAINTAINER Guus Kuiper

RUN apt-get update -q && apt-get install -qy --no-install-recommends \
      build-essential wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN wget http://accellera.org/images/downloads/standards/systemc/systemc-2.3.0.tgz \
      -O systemc-2.3.0.tgz \
 && tar xzf systemc-2.3.0.tgz \
 && cd systemc-2.3.0 \
 && mkdir objdir \
 && cd objdir \
 && export CXX=g++ \
 && ../configure --prefix=/usr/local/systemc-2.3.0 \
 && make \
 && make install \
 && make check \
 && cd .. \
 && rm -rf objdir

