    .include "macros/scrcmd.inc"

    .data

    .long _0031-.-4
    .long _0044-.-4
    .long _0057-.-4
    .long _0012-.-4
    .short 0xFD13

_0012:
    ScrCmd_238 13, 0x4000
    CompareVarToValue 0x4000, 0
    ScrCmd_01C 1, _002B
    ClearFlag 0x219
    End

_002B:
    SetFlag 0x219
    End

_0031:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
