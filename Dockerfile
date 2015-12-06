FROM ubuntu:trusty
MAINTAINER Guus Kuiper
ENV SYSTEMC_VERSION 2.3.1

RUN apt-get update -q && apt-get install -qy --no-install-recommends \
      build-essential curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/systemc \ 
 && curl http://accellera.org/images/downloads/standards/systemc/systemc-$SYSTEMC_VERSION.tgz | tar -xzC /usr/src/systemc \
 && cd /usr/src/systemc/systemc-$SYSTEMC_VERSION \
 && mkdir objdir \
 && cd objdir \
 && export CXX=g++ \
 && mkdir -p /usr/local/systemc-$SYSTEMC_VERSION \
 && ../configure --prefix=/usr/local/systemc-$SYSTEMC_VERSION \
 && make \
 && make install \
 && make check \
 && cd / \
 && rm -rf /usr/src/systemc

ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/local/systemc-$SYSTEMC_VERSION/include
ENV LIBRARY_PATH=$LIBRARY_PATH:/usr/local/systemc-$SYSTEMC_VERSION/lib-linux64
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/systemc-$SYSTEMC_VERSION/lib-linux64
