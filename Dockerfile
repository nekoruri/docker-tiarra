FROM ubuntu:trusty

MAINTAINER NAKAYAMA Masahiro <aki@nekoruri.jp>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y mercurial perl libunicode-japanese-perl

RUN useradd -m -s /bin/bash tiarra

RUN mkdir -p /data/logs /data/conf
RUN chown tiarra.tiarra /data/logs

WORKDIR /home/tiarra
RUN hg clone https://bitbucket.org/topia/tiarra

COPY init.sh /
RUN chmod +x /init.sh
ENTRYPOINT [ "/init.sh" ]

EXPOSE 80 443
VOLUME [ "/data" ]
