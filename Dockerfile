FROM ubuntu:14.04
MAINTAINER wgmeyer@gmail.com

RUN apt-get update -y && apt-get install curl -y && \
    curl -s --remote-name http://www.nmon.net/apt/14.04/all/apt-ntop.deb && \
    dpkg -i apt-ntop.deb && apt-get update -y && apt-get install ntopng -y

ENTRYPOINT ["ntopng"]
CMD ["-V"]
