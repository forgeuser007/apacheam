#!/bin/bash
set -e

echo "Parameter passed to the script $1"
PATH=/usr/sbin:$PATH:/opt/bin
if [ "$1" = 'httpd' ]; then

echo "Starting the server"

/bin/bash /opt/bin/setupagent.sh

exec "$@"
else 

exec "$@"
fi
