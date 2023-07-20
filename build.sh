#!/usr/bin/env bash

# Set up env variable to show % of completion during ninja build
export NINJA_STATUS="[%p %f/%t] "

cd build

# Build rom
ninja

export NINJA_STATUS=""

# Fix rom header secure area CRC
ninja fixrom

export NINJA_STATUS="
"

# Checksum verification
ninja test
