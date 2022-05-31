#!/bin/sh
set -euo pipefail

# Based on wordpress:cli entrypoint
# https://github.com/docker-library/wordpress/blob/master/php7.4/cli/docker-entrypoint.sh

# If the first arg  `-f` or `--some-option` then execute wp-cli
if [ "${1#-}" != "$1" ]; then
	set -- wp "$@"
fi

# if our command is a valid wp-cli subcommand, let's invoke it through wp-cli instead
# (this allows for "docker run wordpress:cli help", etc)
if wp --path=/dev/null help "$1" > /dev/null 2>&1; then
	set -- wp "$@"
fi

exec "$@"


