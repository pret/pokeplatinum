    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0028-.-4
    .long _002A-.-4
    .long _0086-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ScrCmd_061
    End

_0028:
    End

_002A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 213
    ScrCmd_01C 1, _0071
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 232
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _007C
    ScrCmd_014 0x7FC
    ScrCmd_01E 213
    GoTo _0071
    End

_0071:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007C:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0086:
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
