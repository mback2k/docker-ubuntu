FROM ubuntu:latest

MAINTAINER Marc Hoersken "info@marc-hoersken.de"

ENV DEBIAN_FRONTEND noninteractive

ENV DOCKER_ENTRYPOINT_DIR /run/docker-entrypoint.d

ADD docker-entrypoint.sh /run/docker-entrypoint.sh
ENTRYPOINT ["/run/docker-entrypoint.sh"]

CMD ["/bin/bash"]
