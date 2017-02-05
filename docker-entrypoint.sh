#!/bin/sh

set -eo pipefail

scrapy startproject crawl /srv/crawl

exec "$@"
