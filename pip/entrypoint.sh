#!/bin/sh

set -ux

devpi-server --serverdir /pip --init

exec "$@"
