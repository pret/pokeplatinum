    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0029-.-4
    .long _0031-.-4
    .short 0xFD13

_000E:
    ScrCmd_028 0x4000, 0
    ScrCmd_25B
    ScrCmd_25D 0x4001
    ScrCmd_011 0x4001, 0
    ScrCmd_01C 1, _0029
    ScrCmd_002

_0029:
    ScrCmd_028 0x4000, 1
    ScrCmd_002

_0031:
    ScrCmd_25C
    ScrCmd_028 0x4000, 1
    ScrCmd_002

    .byte 0
