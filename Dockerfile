FROM ubuntu:16.04

RUN apt-get update -qq
RUN apt-get install -qq -y texlive-xetex python3

ADD https://raw.githubusercontent.com/aclements/latexrun/master/latexrun \
    /usr/local/bin/latexrun

RUN chmod +x /usr/local/bin/latexrun

RUN mkdir -p /opt/tex

WORKDIR "/opt/tex"

VOLUME ["/opt/tex"]

ENTRYPOINT ["latexrun", "--latex-cmd", "xelatex", "-O", ".out"]
