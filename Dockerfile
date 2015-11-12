# Dockerfile to create a container running Multinest 

FROM ubuntu:15.10

MAINTAINER ldouchy

LABEL version="1.0" description="MultiNest software https://github.com/JohannesBuchner/PyMultiNest"

ENV LD_LIBRARY_PATH=/opt/MultiNest/lib MULTINEST=/opt/MultiNest PYTHONPATH=/opt/custom/complex_pymultinest/LF_modules/configuration:/opt/custom/complex_pymultinest/LF_modules/models

WORKDIR /opt

# Install MultiNest prerequisites

RUN apt-get update && apt-get install -y python-scipy python-numpy python-matplotlib python-progressbar ipython libblas3 libblas-dev liblapack3 liblapack-dev libatlas3-base libatlas-dev cmake build-essential git gfortran

# Copy MultiNest install script

COPY installMultiNest.sh /opt/

# execute install script

RUN /bin/bash /opt/installMultiNest.sh

# Simple test

COPY pymultinest_demo_minimal.py /opt/app/
WORKDIR /opt/app

CMD python pymultinest_demo_minimal.py
