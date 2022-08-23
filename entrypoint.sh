#!/usr/bin/env bash
set -e

TARGET_DIR="$1"
CAIRO_LANG_VERSION="$2"
CAIRO_FORMAT_ARGS="$3"

if [[ "${CAIRO_LANG_VERSION}" ]]; then
    CAIRO_LANG_PKG="cairo-lang==${CAIRO_LANG_VERSION}"
else
    CAIRO_LANG_PKG="cairo-lang"
fi

python3 -m venv /opt/cairo-lang
pip3 install "${CAIRO_LANG_PKG}"
export PATH="/opt/cairo-lang/bin:$PATH"

find ${TARGET_DIR} -type f -name '*.cairo' | xargs cairo-format -c ${CAIRO_FORMAT_ARGS}
