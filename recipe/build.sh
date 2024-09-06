#!/bin/bash

export DISABLE_AUTOBREW=1

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .

# shellcheck disable=SC2086
sed -ie 's/PKG_CFLAGS =/PKG_CFLAGS = -Wno-implicit-function-declaration /' src/Makevars.in
${R} CMD INSTALL --build . ${R_ARGS}
