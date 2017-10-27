#!/usr/bin/env bash
# jenkins build helper script for libasn1c.  This is how we build on jenkins.osmocom.org

set -e
osmo-clean-workspace.sh

set +x
echo
echo
echo
echo " =============================== libasn1c ==============================="
echo
set -x

autoreconf --install --force
./configure CFLAGS="-Werror" CPPFLAGS="-Werror"
$MAKE $PARALLEL_MAKE
$MAKE distcheck \
  || cat-testlogs.sh

osmo-clean-workspace.sh
