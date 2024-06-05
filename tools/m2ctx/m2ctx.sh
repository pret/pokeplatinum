#!/usr/bin/env bash

OUT_FILE=ctx.c

GCC=gcc
FLAGS="-E -P -dD -undef"
INCLUDES="-Itools/cw/include -Isubprojects/NitroSDK-4.2.30001/include -Ibuild/subprojects/NitroSDK-4.2.30001/gen -Isubprojects/NitroSystem-071126.1/include -Isubprojects/NitroWiFi-2.1.30003/include -Isubprojects/NitroDWC-2.2.30008/include -Isubprojects/libvct-1.3.1/include -Isubprojects/libcrypto/include -Isubprojects/ppwlobby/include -Iinclude -Iasm -Ires -Ilib/gds/include -Ilib/spl/include -Ibuild -Ibuild/res/text -include pch/global_pch.h"
DEFINES="-DGAME_VERSION=PLATINUM -DGAME_LANGUAGE=ENGLISH -DPM_KEEP_ASSERTS -D_NITRO -DLINK_PPWLOBBY -DNNS_FINALROM -DSDK_4M -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_CW -DSDK_CW_FORCE_EXPORT_SUPPORT -DSDK_FINALROM -DSDK_TS"

generate-ctx () {
    # Remove any line containing a predefined macro. If not removed, mwccarm
    # generates compiler warnings.
    grep "^#include " "$1" | $GCC $FLAGS $INCLUDES $DEFINES  -x c - | sed '/__STDC__\|__STDC_VERSION__\|__STDC_VERSION__\|__STDC_HOSTED__/d' > $OUT_FILE
}

usage () {
    echo "Generate a context file for decomp.me."
    echo "Usage: $0 [-h] [FILEPATH]"
    echo ""
    echo "Arguments:"
    echo "  FILEPATH      Source file used to generate ctx.c"
    echo ""
    echo "Options:"
    echo "  -h            Show this message and exit"
}

while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
  -h)
    usage
    exit 0
    ;;
  *)
    generate-ctx "$1"
    exit 0
    ;;
  esac
done
