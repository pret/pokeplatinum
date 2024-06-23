#!/bin/sh
set -e

"${NINJA:-ninja}" -C build clang-format
