    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _001D-.-4
    .long _0022-.-4
    .long _0056-.-4
    .short 0xFD13

_0012:
    ScrCmd_028 0x4000, 0
    ScrCmd_175 0
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 7, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0048
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0048:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0056:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 7, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _007A
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007A:
    ScrCmd_011 0x40EF, 1
    ScrCmd_01C 4, _0098
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0098:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
