#!/bin/bash
set -e
cd /tmp/go/src/github.com/nnev/website/www
runuser -u nnev -- termine -hook=/build_website.sh next 4
runuser -u nnev -- jekyll build
exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
