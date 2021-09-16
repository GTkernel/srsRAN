FROM ubuntu:18.04

ARG DEFAULT_WORKDIR=/srslte

## add uhd repo
RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:ettusresearch/uhd

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y cmake \
    libfftw3-dev \
    libmbedtls-dev \ 
    libboost-program-options-dev \
    libconfig++-dev \
    libsctp-dev \
    libuhd-dev \
    libuhd003 \
    uhd-host

# prepare uhd images
RUN /usr/lib/uhd/utils/uhd_images_downloader.py

COPY ./ $DEFAULT_WORKDIR/
RUN mkdir $DEFAULT_WORKDIR/build

WORKDIR $DEFAULT_WORKDIR/build

RUN cmake ../ && make -j8 && make install

ENV LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:/usr/local/lib
RUN ./srslte_install_configs.sh service

WORKDIR $DEFAULT_WORKDIR
