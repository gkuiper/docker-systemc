FROM ubuntu:trusty
MAINTAINER Guus Kuiper

RUN apt-get update -q && apt-get install -qy --no-install-recommends \
      build-essential curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN curl http://accellera.org/images/downloads/standards/systemc/systemc-2.3.0.tgz | tar -xz \
 && cd systemc-2.3.0 \
 && mkdir objdir \
 && cd objdir \
 && export CXX=g++ \
 && mkdir -p /usr/local/systemc-2.3.0 \
 && ../configure --prefix=/usr/local/systemc-2.3.0 \
 && make \
 && make install \
 && make check \
 && cd .. \
 && rm -rf objdir

