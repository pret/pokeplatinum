    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 16, _0024
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0024:
    .short 0, 1
    .short 0xFE, 0x00
