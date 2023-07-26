#!/bin/sh

# Set up env variable to show % of completion during ninja build
export NINJA_STATUS="[%p %f/%t] "

ninja -C build test
