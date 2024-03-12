    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _005F-.-4
    .long _0070-.-4
    .long _0081-.-4
    .long _0092-.-4
    .short 0xFD13

_0016:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0041
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _004C
    ScrCmd_002

_0041:
    ScrCmd_02C 1
    ScrCmd_016 _0057
    ScrCmd_002

_004C:
    ScrCmd_02C 2
    ScrCmd_016 _0057
    ScrCmd_002

_0057:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_005F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0070:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0081:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0092:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
