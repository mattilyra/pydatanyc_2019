FROM python:3.7

COPY requirements.txt /usr/src/app/

ENV LANG=C.UTF-8 \
    SHELL=/bin/bash \
    NB_USER=jovyan \
    NB_UID=1000 \
    NB_GID=100 \
    HOME=/home/jovyan

RUN adduser --uid $NB_UID --no-create-home --shell $SHELL $NB_USER

WORKDIR /usr/src/app/
RUN pip3 install --upgrade pip3
RUN pip3 install -r requirements.txt

USER $NB_UID