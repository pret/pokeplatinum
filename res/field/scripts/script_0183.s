    .include "macros/scrcmd.inc"

    .data

    .long _0020-.-4
    .long _002C-.-4
    .long _0042-.-4
    .long _001A-.-4
    .long _0058-.-4
    .long _006B-.-4
    .short 0xFD13

_001A:
    ScrCmd_01E 0x9C0
    ScrCmd_002

_0020:
    ScrCmd_028 0x8007, 0
    ScrCmd_014 0x7D2
    ScrCmd_002

_002C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ScrCmd_061
    ScrCmd_002

_0042:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 18
    ScrCmd_061
    ScrCmd_002

_0058:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_006B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
