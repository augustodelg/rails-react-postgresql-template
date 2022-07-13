#!/usr/bin/env ash

set -eo pipefail

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- npm "$@"
fi

exec "$@"
