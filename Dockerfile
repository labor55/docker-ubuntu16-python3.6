FROM daocloud.io/ubuntu:16.04
RUN rm /etc/apt/sources.list
COPY ./sources.list /etc/apt/sources.list
RUN apt-get update -y && apt-get update -y

RUN apt-get install -y apt-transport-https vim iproute2 net-tools ca-certificates curl wget software-properties-common

#安装python3.6 来自第三方
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install -y python3.6
RUN apt-get install -y python3.6-dev
RUN apt-get install -y python3.6-venv
#为3.6安装pip
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.6 get-pip.py
#print()时在控制台正常显示中文
ENV PYTHONIOENCODING=utf-8
