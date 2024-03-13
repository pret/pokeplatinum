    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000E-.-4
    .short 0xFD13

_000A:
    ScrCmd_2F2
    ScrCmd_002

_000E:
    ScrCmd_060
    ScrCmd_311 128
    ScrCmd_05E 128, _0060
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _003B
    ScrCmd_02C 1
    ScrCmd_016 _003E

_003B:
    ScrCmd_02C 2
_003E:
    ScrCmd_02C 3
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 128, _0068
    ScrCmd_05F
    ScrCmd_312 128
    ScrCmd_028 0x4055, 6
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0060:
    .short 12, 7
    .short 0xFE, 0x00

    .balign 4, 0
_0068:
    .short 13, 7
    .short 0xFE, 0x00
