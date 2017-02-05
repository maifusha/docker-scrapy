#!/bin/sh

set -eo pipefail

if [ ! -d "/srv/crawl/crawl" ]; then
  scrapy startproject crawl /srv/crawl
fi

exec "$@"
