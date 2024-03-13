    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _002C-.-4
    .long _003A-.-4
    .long _0048-.-4
    .long _005B-.-4
    .long _006E-.-4
    .long _0081-.-4
    .short 0xFD13

_001E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 0
    ScrCmd_061
    ScrCmd_002

_002C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 1
    ScrCmd_061
    ScrCmd_002

_003A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 2
    ScrCmd_061
    ScrCmd_002

_0048:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_005B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_006E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0081:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002
