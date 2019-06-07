FROM ubuntu
MAINTAINER Joshua Magady Josh.Magady@gmail.com

ADD .\InnoKB-Ver221-Linux-Debian-amd64.tgz /usr/local/innokb

RUN chmod +x /usr/local/innokb/*.so
RUN chmod +x /usr/local/innokb/innokb_linux_debian_amd64


EXPOSE 8083

CMD /usr/local/innokb/innokb_linux_debian_amd64 -daemon -silent -port 8083