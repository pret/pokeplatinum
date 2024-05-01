    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _001E-.-4
    .long _0031-.-4
    .long _0062-.-4
    .short 0xFD13

_0012:
    ScrCmd_028 0x8007, 0
    ScrCmd_014 0x7D2
    End

_001E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0031:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 7, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0057
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0062:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
