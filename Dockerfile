FROM ubuntu:18.04  
MAINTAINER Eliel <eliel.garcia@gmail.com>
RUN apt-get -y update  
RUN apt-get install -y python-yaml python-jinja2 git
RUN git clone https://github.com/ansible/ansible.git /tmp/ansible  
WORKDIR /tmp/ansible  
RUN git submodule update --init --recursive 
ENV PATH $PATH:/tmp/ansible/bin
ENV ANSIBLE_LIBRARY /tmp/ansible/library
ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH
WORKDIR /ansible 
