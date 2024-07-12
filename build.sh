#!/bin/sh
set -e

target="test"
if [ "$#" -ge 1 ]; then
    target="$1"
    shift
fi

# Set up env variable to show % of completion during ninja build
export NINJA_STATUS="[%p %f/%t] "

# Explicitly set the Response File threshold to half of Wine's limit
# Must be here in addition to in config.sh for when Meson automatically triggers a reconfigure
# Ref: https://github.com/mesonbuild/meson/blob/8e89a38737281f7618a1284fe9e68eb6bb1fe99d/mesonbuild/backend/ninjabackend.py#L108
# Ref: https://github.com/wine-mirror/wine/blob/34b1606019982b71818780bc84b76460f650af31/dlls/ntdll/unix/env.c#L1579
# TODO: https://github.com/mesonbuild/meson/issues/13414
export MESON_RSP_THRESHOLD=16387

# Build the project
if [ "$target" = test ]; then
    "${MESON:-meson}" test -C build "$@"
elif [ "$target" = rom ]; then
    "${MESON:-meson}" compile -C build "pokeplatinum.us.nds"
else
    "${MESON:-meson}" compile -C build "$target" "$@"
fi
