#!/bin/bash

export DISABLE_AUTOBREW=1

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .

# shellcheck disable=SC2086
export PKG_CFLAGS="-Wno-implicit-function-declaration"
${R} CMD INSTALL --build . ${R_ARGS}
