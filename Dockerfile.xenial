FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
RUN find /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin -perm /a+s -type f -execdir chmod a-s {} +

ENV DOCKER_ENTRYPOINT_DIR /run/docker-entrypoint.d
ADD docker-entrypoint.sh /run/docker-entrypoint.sh

ENTRYPOINT ["/run/docker-entrypoint.sh"]
CMD ["/bin/bash"]
