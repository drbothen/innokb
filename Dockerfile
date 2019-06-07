FROM ubuntu
MAINTAINER Joshua Magady Josh.Magady@gmail.com

COPY ./InnoKB-Ver221-Linux-Debian-amd64.tgz ./

RUN mkdir /usr/local/innokb && tar zxvf InnoKB-Ver221-Linux-Debian-amd64.tgz -C /usr/local/innokb --strip-components=1
RUN chmod +x /usr/local/innokb/*.so
RUN chmod +x /usr/local/innokb/innokb_linux_debian_amd64


EXPOSE 8083

ENTRYPOINT ["/usr/local/innokb/innokb_linux_debian_amd64", "-daemon", "-silent", "-port 8083"]
