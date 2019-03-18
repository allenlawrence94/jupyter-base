FROM continuumio/miniconda3:latest

RUN conda install jupyter --yes

RUN mkdir /root/.jupyter && \
    mkdir /root/work

ADD jupyter_notebook_config.py /root/.jupyter/

WORKDIR /root/work

CMD jupyter notebook
