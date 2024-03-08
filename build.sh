#!/bin/sh
set -e

target="test"
if [ "$#" -ge 1 ]; then
    target="$1"
    shift
fi

# Set up env variable to show % of completion during ninja build
export NINJA_STATUS="[%p %f/%t] "

# Build the project
if [ "$target" = test ]; then
    "${MESON:-meson}" test -C build "$@"
else
    "${MESON:-meson}" compile -C build "$target" "$@"
fi
