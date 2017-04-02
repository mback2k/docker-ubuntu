#!/bin/sh
set -e

if [ -d "${DOCKER_ENTRYPOINT_DIR}" ]; then
    /bin/run-parts --verbose --regex '^[.a-zA-Z0-9_-]+$' "${DOCKER_ENTRYPOINT_DIR}"
fi

exec "$@"
