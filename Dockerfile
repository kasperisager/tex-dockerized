FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y texlive-full python3 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install pygments

ADD https://raw.githubusercontent.com/aclements/latexrun/master/latexrun \
    /usr/local/bin/latexrun

RUN chmod +x /usr/local/bin/latexrun

RUN mkdir -p /opt/tex

WORKDIR "/opt/tex"

VOLUME "/opt/tex"
