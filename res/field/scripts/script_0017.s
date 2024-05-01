    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _0028-.-4
    .long _0036-.-4
    .long _0044-.-4
    .long _0057-.-4
    .long _006A-.-4
    .short 0xFD13

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 3
    ScrCmd_061
    End

_0028:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 4
    ScrCmd_061
    End

_0036:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 5
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
