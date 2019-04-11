ARG BASE_CONTAINER=jupyter/pyspark-notebook
FROM $BASE_CONTAINER

USER root

RUN apt-get update 
RUN apt-get install -y --no-install-recommends libfreetype6-dev pkg-config

USER jovyan

# Install app dependencies
RUN pip install --upgrade pip
RUN pip install lime
RUN pip install keras
RUN pip install nltk
RUN pip install tensorflow
RUN pip install gensim
