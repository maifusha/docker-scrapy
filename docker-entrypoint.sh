#!/bin/sh

set -eo pipefail

cd /srv/spider
touch aaa
# scrapy startproject /srv/crawler

exec "$@"
