#!/usr/bin/env bash

set -euo pipefail

BANNER_BNR="$1"; shift
HEADER_TEMPLATE="$1"; shift
ROM_RSF="$1"; shift
ARM7_BIN="$1"; shift
ARM7_DEFS="$1"; shift
NDS_OUT="$1"; shift
NLF_OUT="$1"; shift
FIXROM_EXE="$1"; shift

$@ -DTITLE_NAME="POKEMON PL" \
	-DBNR=$BANNER_BNR \
	-DHEADER_TEMPLATE=$HEADER_TEMPLATE \
	-DARM7=$ARM7_BIN \
	-DARM7_DEFS=$ARM7_DEFS \
	$ROM_RSF \
	$NDS_OUT \
	$NLF_OUT

$FIXROM_EXE $NDS_OUT --secure-crc 0xF8B8 --game-code CPUE
