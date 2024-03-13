    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _001D-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_001D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_05E 16, _0058
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_05E 17, _0060
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 16, _0068
    ScrCmd_05E 17, _0068
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0058:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0060:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0068:
    .short 34, 1
    .short 0xFE, 0x00
