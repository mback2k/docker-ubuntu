FROM ubuntu:latest

MAINTAINER Marc Hoersken "info@marc-hoersken.de"

ENV DEBIAN_FRONTEND noninteractive

ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.1/dumb-init_1.2.1_amd64.deb /opt/dumb-init_1.2.1_amd64.deb
RUN dpkg -i /opt/dumb-init_1.2.1_amd64.deb

ENV DOCKER_ENTRYPOINT_DIR /run/docker-entrypoint.d
ADD docker-entrypoint.sh /run/docker-entrypoint.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/run/docker-entrypoint.sh"]
CMD ["/bin/bash"]
