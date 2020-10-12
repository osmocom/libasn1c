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
./configure --enable-werror
$MAKE $PARALLEL_MAKE
$MAKE $PARALLEL_MAKE distcheck \
  || cat-testlogs.sh
$MAKE $PARALLEL_MAKE maintainer-clean

osmo-clean-workspace.sh
