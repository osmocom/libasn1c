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

# Parallel make is disabled due to a race condition. On Jenkins, it often
# aborts the build with: "asn1p_y.y:357:13: error: 'param' undeclared"
$MAKE -j1
$MAKE distcheck \
  || cat-testlogs.sh

osmo-clean-workspace.sh
