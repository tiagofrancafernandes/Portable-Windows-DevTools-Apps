#!/bin/bash

SITES_DIR=${SITES_DIR:-/c/apps/www/sites}
DEFAULT_SITE_DIR=demo
SITE_DIR=${1:-$DEFAULT_SITE_DIR}
FULL_SITE_PATH="${SITES_DIR}/${SITE_DIR}"
WS_PORT=${WS_PORT:-8000}

start "http://localhost:${WS_PORT}"

nohup /c/apps/bin/mysqld.sh &

/c/apps/bin/php8.3.sh -S 0.0.0.0:${WS_PORT} -t ${FULL_SITE_PATH}
