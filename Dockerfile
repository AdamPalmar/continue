
FROM ubuntu:16.04

RUN apt-get update --fix-missing
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update

RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv
RUN apt-get install -y git

# update pip
#RUN python3.6 -m pip install pip --upgrade
#RUN python3.6 -m pip install wheel

ADD . /falcon

WORKDIR /falcon

ENV PYTHONPATH /
#RUN pip3 install cython
#RUN pip3 install --no-binary :all: falcon
RUN python3.6 -m pip install -r /falcon/requirements.txt