# Dockerfile to create a container running Multinest 

FROM ubuntu:15.10

MAINTAINER ldouchy

LABEL version="0.1" description="MultiNest software"

ENV LD_LIBRARY_PATH=/opt/MultiNest/lib MULTINEST=/opt/MultiNest

WORKDIR /opt

# Install MultiNest prerequisites

RUN apt-get update && apt-get install -y python-scipy python-numpy python-matplotlib python-progressbar ipython libblas3 libblas-dev liblapack3 liblapack-dev libatlas3-base libatlas-dev cmake build-essential git gfortran

# Copy MultiNest install script

COPY installMultiNest.sh /opt/

# execute install script

RUN /bin/bash /opt/installMultiNest.sh

