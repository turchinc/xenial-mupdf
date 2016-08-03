# Dockerfile to include and start an MC in a docker container 
# on a ubuntu 16.04 LTS build with current JDK
FROM turchinc/xenial-oracle-jdk
LABEL tag="turchinc/xenial-mupdf" vendor="Bertsch Innovation GmbH"
MAINTAINER Chris Turchin <chris.turchin@bertschinnovation.com>
ENV DEBIAN_FRONTEND noninteractive

# mupdf 
RUN     apt-get update && apt-get install -y -q software-properties-common && \
        add-apt-repository ppa:ubuntuhandbook1/apps && \
        apt-get update && apt-get install -y -q mupdf mupdf-tools && \
        apt-get autoclean && apt-get --purge -y autoremove && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
